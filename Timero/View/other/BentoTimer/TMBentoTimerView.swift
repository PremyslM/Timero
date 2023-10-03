//
//  TMBentoTimerView.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 01.10.2023.
//

import SwiftUI


struct TMBentoTimerView: View {
    
    @ObservedObject private var viewModel: TMBentoTimerViewViewModel
    
    init(_ timer: TMTimer) {
        self.viewModel = TMBentoTimerViewViewModel(timer: timer)
    }
    
    var body: some View {
        ZStack {
            Color.black
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            if !viewModel.isPressed {
                VStack {
                    Image(systemName: "plus")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 18))
                }
            } else {
                HStack {
                    Text("\(Int(viewModel.currentCountDown))s")
                        .foregroundStyle(.white)
                }
            }
        }
        .onTapGesture {
            withAnimation {
                viewModel.timerTapped()
            }
        }
    }
}

