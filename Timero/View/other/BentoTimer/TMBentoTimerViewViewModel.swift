//
//  TMBentoTimerViewViewModel.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 03.10.2023.
//

import Foundation


class TMBentoTimerViewViewModel: ObservableObject {
    
    @Published var currentCountDown: Double
    @Published var isPressed: Bool
    
    private let timerManager = TimerManager()
    
    public var timer: TMTimer
    
    init(timer: TMTimer) {
        self.timer = timer
        self.currentCountDown = timer.timeValue
        self.isPressed = false
    }
    
    // MARK: - Private
    private func startTimer() {
        if !isRunning() {
            timerManager.startTimer {
                if self.currentCountDown > 0 {
                    self.currentCountDown = self.currentCountDown - 1
                }
            }
        }
    }
    
    private func tapped() {
        self.isPressed = true
    }
    
    // MARK: - Public
    public func isRunning() -> Bool {
        if self.timer.timeValue == self.currentCountDown {
            return false
        }
        return true
    }
    
    public func timerTapped() {
        self.tapped()
        self.startTimer()
    }
}
