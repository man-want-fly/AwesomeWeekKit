//
//  AWWeekView.swift
//  Cals
//
//  Created by DB H on 2023/7/22.
//

import Foundation

final class WeakTimer {

    fileprivate weak var timer: Timer?
    fileprivate weak var target: AnyObject?
    fileprivate let action: (Timer) -> Void

    fileprivate init(
        timeInterval: TimeInterval,
        target: AnyObject,
        repeats: Bool,
        action: @escaping (Timer) -> Void
    ) {
        self.target = target
        self.action = action
        self.timer = Timer.scheduledTimer(
            timeInterval: timeInterval,
            target: self,
            selector: #selector(fire),
            userInfo: nil,
            repeats: repeats
        )
    }

    class func scheduledTimer(
        timeInterval: TimeInterval,
        target: AnyObject,
        repeats: Bool,
        action: @escaping (Timer) -> Void
    ) -> Timer {
        return WeakTimer(
            timeInterval: timeInterval,
            target: target,
            repeats: repeats,
            action: action
        )
        .timer!
    }

    @objc fileprivate func fire(timer: Timer) {
        if target != nil {
            action(timer)
        } else {
            timer.invalidate()
        }
    }
}
