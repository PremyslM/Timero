//
//  TimerManager.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 02.10.2023.
//

import Foundation


class TimerManager {
    
    private var timer: Timer?
        
    func startTimer(onStart: @escaping () -> Void) {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            onStart()
        }
    }
    
    func stopTimer() {
        self.timer?.invalidate()
        print("stopped")
    }
}
