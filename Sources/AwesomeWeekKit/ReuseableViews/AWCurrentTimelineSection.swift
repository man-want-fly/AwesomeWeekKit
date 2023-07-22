//
//  AWCurrentTimelineSection.swift
//  Cals
//
//  Created by DB H on 2023/7/22.
//

import UIKit

open class AWCurrentTimelineSection: UICollectionReusableView {

    public var halfBallView = UIView()
    public var lineView = UIView()
    let halfBallSize: CGFloat = 10

    public override init(frame: CGRect) {
        super.init(frame: .zero)

        setupUI()
    }

    open func setupUI() {
        self.addSubviews([halfBallView, lineView])
        halfBallView.setAnchorCenterVerticallyTo(
            view: self,
            widthAnchor: halfBallSize,
            heightAnchor: halfBallSize,
            leadingAnchor: (leadingAnchor, -5)
        )
        lineView.setAnchorCenterVerticallyTo(
            view: self,
            heightAnchor: 1,
            leadingAnchor: (halfBallView.trailingAnchor, 0),
            trailingAnchor: (trailingAnchor, 0)
        )

        halfBallView.backgroundColor = AWWeekViewColors.today
        halfBallView.layer.cornerRadius = halfBallSize / 2
        lineView.backgroundColor = AWWeekViewColors.today
        self.clipsToBounds = true
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
