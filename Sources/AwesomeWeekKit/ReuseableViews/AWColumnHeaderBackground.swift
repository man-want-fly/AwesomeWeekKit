//
//  AWColumnHeaderBackground.swift
//  Cals
//
//  Created by DB H on 2023/7/22.
//

import UIKit

/// The whole background for the top
open class AWColumnHeaderBackground: UICollectionReusableView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
        self.clipsToBounds = true
        setupBottomDivider()
    }

    open func setupBottomDivider() {
        let bottomDivider = UIView()
        bottomDivider.backgroundColor = AWWeekViewColors.gridLine
        addSubview(bottomDivider)
        bottomDivider.setAnchorConstraintsEqualTo(
            heightAnchor: 0.5,
            bottomAnchor: (bottomAnchor, 0),
            leadingAnchor: (leadingAnchor, 0),
            trailingAnchor: (trailingAnchor, 0)
        )
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
