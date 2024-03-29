//
//  CreateTimerView.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 05.10.2023.
//

import SwiftUI


struct CreateTimerView: View {
    
    @Environment(\.dismiss) var dismiss
    
    private var viewModel: CreateTimerViewModel
    
    @State private var title: String = "test timer"
    @State private var duration: Double = 25.0
    
    init(timerViewModel: TMBentoTimerViewViewModel) {
        self.viewModel = CreateTimerViewModel(timerViewModel)
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Title", text: $title)
                
                HStack(spacing: 10) {
                    Text("\(Int(duration))s")
                    Slider(value: $duration, in: 10...100)
                }
            }
            
            Section {
                HStack {
                    Spacer()
                    Button {
                        let newTimer = TMTimer(title: title, timeValue: duration, isDone: false)
                        self.viewModel.submitButtonTapped(newTimer)                        
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.up.circle")
                            .font(.system(size: 26))
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    CreateTimerView(timerViewModel: TMBentoTimerViewViewModel())
}
