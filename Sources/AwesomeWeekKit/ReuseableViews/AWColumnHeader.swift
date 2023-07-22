//
//  AWColumnHeader.swift
//  Cals
//
//  Created by DB H on 2023/7/22.
//

import UIKit

/// Header for each column (section, day) in collectionView (Supplementary View)
open class AWColumnHeader: UICollectionReusableView {

    public var lblDay = UILabel()
    public var lblWeekday = UILabel()
    let calendarCurrent = Calendar.current
    public var dateFormatter = DateFormatter()

    public override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
        backgroundColor = .clear
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        // Hide all content when colum header height equals 0
        self.clipsToBounds = true
        let stackView = UIStackView(arrangedSubviews: [lblWeekday, lblDay])
        stackView.axis = .vertical
        stackView.spacing = 2
        addSubview(stackView)
        stackView.setAnchorConstraintsEqualTo(
            centerXAnchor: centerXAnchor,
            centerYAnchor: centerYAnchor
        )
        lblDay.textAlignment = .center
        lblWeekday.textAlignment = .center
        lblDay.font = UIFont.systemFont(ofSize: 17)
        lblWeekday.font = UIFont.systemFont(ofSize: 12)
    }

    public func updateView(date: Date) {
        let weekday = calendarCurrent.component(.weekday, from: date) - 1

        lblDay.text = String(calendarCurrent.component(.day, from: date))
        lblWeekday.text = dateFormatter.shortWeekdaySymbols[weekday].uppercased()

        let isToday = Calendar.current.isDateInToday(date)
        if isToday {
            lblDay.textColor = AWWeekViewColors.today
            lblWeekday.textColor = AWWeekViewColors.today
        } else {
            lblDay.textColor = AWWeekViewColors.columnHeaderDay
            lblWeekday.textColor = AWWeekViewColors.columnHeaderDay
        }
    }
}
