//
//  AWGridLine.swift
//  Cals
//
//  Created by DB H on 2023/7/22.
//

import UIKit

open class AWGridLine: UICollectionReusableView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = AWWeekViewColors.gridLine
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
