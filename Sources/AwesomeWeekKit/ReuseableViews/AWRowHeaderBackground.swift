//
//  AWRowHeaderBackground.swift
//  Cals
//
//  Created by DB H on 2023/7/22.
//

import UIKit

open class AWRowHeaderBackground: UICollectionReusableView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .tertiarySystemBackground

    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
