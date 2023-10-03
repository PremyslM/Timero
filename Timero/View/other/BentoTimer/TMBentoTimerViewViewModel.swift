//
//  TMBentoTimerViewViewModel.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 03.10.2023.
//

import Foundation


class TMBentoTimerViewViewModel: ObservableObject {
    
    // MARK: - Public
    @Published public var currentCountDown: Double
    @Published public var isPressed: Bool
    
    public var timer: TMTimer
    
    // MARK: - Private
    private let timerManager = TimerManager()
    
    init(timer: TMTimer) {
        self.timer = timer
        self.currentCountDown = timer.timeValue
        self.isPressed = false
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
}
