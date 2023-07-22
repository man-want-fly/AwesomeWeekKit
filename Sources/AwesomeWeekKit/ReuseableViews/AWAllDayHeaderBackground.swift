//
//  AWAllDayHeaderBackground.swift
//  Cals
//
//  Created by DB H on 2023/7/22.
//

import UIKit

open class AWAllDayHeaderBackground: UICollectionReusableView {

    public override init(frame: CGRect) {
        super.init(frame: frame)

        self.clipsToBounds = true
        self.backgroundColor = .white
        setupBottomDivider()
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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

}
