//
//  CreateTimerViewModel.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 05.10.2023.
//

import Foundation

class CreateTimerViewModel: ObservableObject {
    @Published var timer: TMTimer?
    var timerViewModel: TMBentoTimerViewViewModel
    
    init(_ timerViewModel: TMBentoTimerViewViewModel) {
        self.timerViewModel = timerViewModel
    }
    
    public func submitButtonTapped(_ timer: TMTimer) {
        createTimer(timer)
        self.timerViewModel.onSubmitCreateTimer(timer) {
            DataManager.timerArray.append(timer)
            DataManager.getInfo()
        }
    }
    
    private func createTimer(_ timer: TMTimer) {
        self.timer = timer
    }
}
