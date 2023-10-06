//
//  DataManger.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 06.10.2023.
//

import Foundation


class DataManager {
    static var timerArray: [TMTimer] = []
    
    static func getInfo() {
        var totalDuration: Double = 0
        
        for timer in DataManager.timerArray {
            totalDuration += timer.timeValue
        }
        
        print("Count: \(DataManager.timerArray.count) | Total duration: \(totalDuration)")
    }
    
    
}
