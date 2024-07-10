//
//  UITableView+SatSwifty.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import UIKit

public extension UITableView {
    
    func register<T: UITableViewCell>(cellWithClass name: T.Type) -> Self {
        register(T.self, forCellReuseIdentifier: String(describing: name))
        return self
    }
    
    func register<T: UITableViewHeaderFooterView>(viewWithClass name: T.Type) -> Self {
        register(T.self, forHeaderFooterViewReuseIdentifier: String(describing: name))
        return self
    }
    
    func dequeueReusableCell<T: UITableViewCell>(withClass name: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: String(describing: name), for: indexPath) as? T else {
            fatalError("Couldn't find UITableViewCell for \(String(describing: name)), make sure the cell is registered with table view")
        }
        return cell
    }
    
    func separatorStyle(_ style: UITableViewCell.SeparatorStyle) -> Self {
        self.separatorStyle = style
        return self
    }
    
    func estimatedSectionHeaderHeight(_ height: CGFloat) -> Self {
        self.estimatedSectionHeaderHeight = height
        return self
    }
    
    func estimatedSectionFooterHeight(_ height: CGFloat) -> Self {
        self.estimatedSectionFooterHeight = height
        return self
    }
    
    func rowHeight(_ rowHeight: CGFloat) -> Self {
        self.rowHeight = rowHeight
        return self
    }
        
    func delegate(_ delegate: UITableViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }

    func dataSource(_ dataSource: UITableViewDataSource) -> Self {
        self.dataSource = dataSource
        return self
    }
    
    func tableHeaderView(_ tableHeaderView: UIView) -> Self {
        self.tableHeaderView = tableHeaderView
        return self
    }
    
    func tableFooterView(_ tableFooterView: UIView) -> Self {
        self.tableFooterView = tableFooterView
        return self
    }
}
