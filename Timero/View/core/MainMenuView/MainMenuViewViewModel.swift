//
//  MainMenuViewViewModel.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 02.10.2023.
//

import Foundation
import SwiftUI


class MainMenuViewViewModel {
    
    private let timeManager = TimerManager()
    
    func timerTapped(timerIsRunning: Binding<Bool>) {
        timerIsRunning.wrappedValue.toggle()
        
        if timerIsRunning.wrappedValue {
            timeManager.startTimer {
                print(".")
            }
        } else {
            timeManager.stopTimer()            
        }
    }
}
