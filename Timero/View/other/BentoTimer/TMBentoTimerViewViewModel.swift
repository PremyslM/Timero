//
//  TMBentoTimerViewViewModel.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 03.10.2023.
//

import Foundation


class TMBentoTimerViewViewModel: ObservableObject {
    
    private let timerManager = TimerManager()
    
    var timer: TMTimer
    @Published var currentCountDown: Double
    
    init(timer: TMTimer) {
        self.timer = timer
        self.currentCountDown = timer.timeValue
    }
    
    func startTimer() {
        timerManager.startTimer {
            self.currentCountDown = self.currentCountDown - 1
        }
    }
}
