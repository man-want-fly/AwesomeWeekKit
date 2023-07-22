//
//  AWLongPressEventCell.swift
//  Cals
//
//  Created by DB H on 2023/7/22.
//

import UIKit

// If you want to use Move Type LongPressWeekView, you have to subclass this class
open class AWLongPressEventCell: UICollectionViewCell {

    // Make sure update your event when each time configure cell in cellForRowAt
    public var event: AWEvent!

    // You have to set the background color in contentView instead of cell background color, because cell reuse problems in collectionview
    // When setting alpha to cell, the alpha will back to 1 when collectionview scrolled, which means that moving cell will not be translucent
    // Check the example for details eg. self.contentView.backgroundColor = .blue
}
