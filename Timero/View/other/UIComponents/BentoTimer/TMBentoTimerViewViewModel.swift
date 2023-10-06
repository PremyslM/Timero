//
//  TMBentoTimerViewViewModel.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 03.10.2023.
//

import Foundation


class TMBentoTimerViewViewModel: ObservableObject {
    
    // MARK: - Public
    @Published public var isPressed: Bool
    @Published public var timerSetted: Bool
    
    @Published public var currentCountDown: Double = 25.0
    @Published public var timer: TMTimer?
    
    // MARK: - Private
    private let timerManager = TimerManager()
    
    init() {
        self.isPressed = false
        self.timerSetted = false
    }
    
    // MARK: - Public
    public func isRunning() -> Bool {
        if self.timer?.timeValue == self.currentCountDown {
            return false
        }
        return true
    }
    
    public func timerTapped() {
        self.tapped()
    }
    
    public func onSubmitCreateTimer(_ timer: TMTimer, onSubmit: @escaping () -> Void) {
        onSubmit()
        self.timer = timer
        self.currentCountDown = self.timer?.timeValue ?? 69
        self.timerSetted = true
    }
    
    // MARK: - Private
    private func startTimer() {
        timerManager.startTimer {
            print(self.currentCountDown)
            if self.currentCountDown > 0 {
                self.currentCountDown = self.currentCountDown - 1
            }
        }        
    }
    
    private func tapped() {
        self.isPressed = true        
        if timerSetted && !isRunning() {
            self.startTimer()
        }
    }
}
