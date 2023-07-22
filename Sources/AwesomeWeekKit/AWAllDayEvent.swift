//
//  AWAllDayEvent.swift
//  Cals
//
//  Created by DB H on 2023/7/22.
//

import UIKit

open class AWAllDayEvent: AWEvent {

    /// If a event is All-Day, then it will be shown at top of calendarView
    public var isAllDay: Bool

    public init(id: String, startDate: Date, endDate: Date, isAllDay: Bool) {
        self.isAllDay = isAllDay
        super.init(id: id, startDate: startDate, endDate: endDate)
    }

    open override func copy(with zone: NSZone?) -> Any {
        return AWAllDayEvent(id: id, startDate: startDate, endDate: endDate, isAllDay: isAllDay)
    }

}
