//
//  UICollectionViewFlowLayout+SatSwifty.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import UIKit

public extension UICollectionViewFlowLayout {
    
    func scrollDirection(_ scrollDirection: UICollectionView.ScrollDirection) -> Self {
        self.scrollDirection = scrollDirection
        return self
    }
    
    func minimumLineSpacing(_ minimumLineSpacing: CGFloat) -> Self {
        self.minimumLineSpacing = minimumLineSpacing
        return self
    }
    
    func minimumInteritemSpacing(_ minimumInteritemSpacing: CGFloat) -> Self {
        self.minimumInteritemSpacing = minimumInteritemSpacing
        return self
    }
    
    func itemSize(_ itemSize: CGSize) -> Self {
        self.itemSize = itemSize
        return self
    }
    
    func estimatedItemSize(_ estimatedItemSize: CGSize) -> Self {
        self.estimatedItemSize = estimatedItemSize
        return self
    }
    
    func sectionInset(_ sectionInset: UIEdgeInsets) -> Self {
        self.sectionInset = sectionInset
        return self
    }
}
