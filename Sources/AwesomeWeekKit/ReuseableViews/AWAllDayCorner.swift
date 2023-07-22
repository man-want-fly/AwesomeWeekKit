//
//  AWAllDayCorner.swift
//  Cals
//
//  Created by DB H on 2023/7/22.
//

import UIKit

open class AWAllDayCorner: UICollectionReusableView {

    public var lblTitle = UILabel()

    public override init(frame: CGRect) {
        super.init(frame: frame)

        setupUI()
        setupBottomDivider()
    }

    open func setupUI() {
        self.backgroundColor = .white
        self.clipsToBounds = true
        self.addSubview(lblTitle)
        lblTitle.text = "all-day"
        lblTitle.textColor = AWWeekViewColors.allDayHeader
        lblTitle.font = UIFont.systemFont(ofSize: 12)
        // Support iPhone X Landscape state (same as AWRowHeader)
        lblTitle.setAnchorCenterVerticallyTo(view: self, trailingAnchor: (self.trailingAnchor, -2))
    }

    open func setupBottomDivider() {
        let bottomDivider = UIView()
        bottomDivider.backgroundColor = AWWeekViewColors.gridLine
        addSubview(bottomDivider)
        bottomDivider.setAnchorConstraintsEqualTo(heightAnchor: 0.5, bottomAnchor: (bottomAnchor, 0), leadingAnchor: (leadingAnchor, 0), trailingAnchor: (trailingAnchor, 0))
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
