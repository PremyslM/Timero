//
//  TMBentoTimerViewViewModel.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 03.10.2023.
//

import Foundation


class TMBentoTimerViewViewModel: ObservableObject {
    
    @Published var currentCountDown: Double
    
    private let timerManager = TimerManager()
        
    public var timer: TMTimer
    
    init(timer: TMTimer) {
        self.timer = timer
        self.currentCountDown = timer.timeValue
    }
    
    func startTimer() {
        timerManager.startTimer {
            self.currentCountDown = self.currentCountDown - 1
            print("TImer: \(self.currentCountDown)")
        }
    }
    
    // MARK: - Private
    private func isRunning() -> Bool{
        if self.timer.timeValue == self.currentCountDown {
            return false
        }
        return true
    }
}
