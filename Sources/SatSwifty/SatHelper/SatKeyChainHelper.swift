//
//  SatKeyChainHelper.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import Foundation

public struct SatKeyChainHelper {
    private static func save(_ data: Data, service: String, account: String) {
        let query = [
            kSecValueData: data,
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: service,
            kSecAttrAccount: account,
            kSecAttrAccessible: kSecAttrAccessibleWhenUnlockedThisDeviceOnly,
        ] as CFDictionary

        let status = SecItemAdd(query, nil)

        if status == errSecDuplicateItem {
            let query = [
                kSecClass: kSecClassGenericPassword,
                kSecAttrService: service,
                kSecAttrAccount: account,
            ] as CFDictionary

            let attributesToUpdate = [kSecValueData: data] as CFDictionary

            SecItemUpdate(query, attributesToUpdate)
        } else if status != errSecSuccess {            
            print("Error: \(status)")
        }
    }

    private static func read(service: String, account: String) -> Data? {
        let query = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: service,
            kSecAttrAccount: account,
            kSecReturnData: true,
        ] as CFDictionary

        var result: AnyObject?
        SecItemCopyMatching(query, &result)

        return (result as? Data)
    }

    public static func delete(service: String, account: String) {
        let query = [
            kSecAttrService: service,
            kSecAttrAccount: account,
            kSecClass: kSecClassGenericPassword,
        ] as CFDictionary

        SecItemDelete(query)
    }

    public static func save<T>(_ item: T, service: String, account: String) where T : Codable {
        do {
            let data = try JSONEncoder().encode(item)
            save(data, service: service, account: account)
        } catch {
            print("Fail to encode item for keychain: \(error)")
        }
    }

    public static func read<T>(service: String, account: String, type: T.Type) -> T? where T : Codable {

        guard let data = read(service: service, account: account) else {
            return nil
        }

        do {
            let item = try JSONDecoder().decode(type, from: data)
            return item
        } catch {
            print("Fail to decode item for keychain: \(error)")
            return nil
        }
    }

}
