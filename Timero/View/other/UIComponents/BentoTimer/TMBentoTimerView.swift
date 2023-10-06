//
//  TMBentoTimerView.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 01.10.2023.
//

import SwiftUI


struct TMBentoTimerView: View {
    
    @ObservedObject private var viewModel: TMBentoTimerViewViewModel
    
    @State private var addNewViewIsShowing: Bool = false
    
    
    init(_ timer: TMTimer) {
        self.viewModel = TMBentoTimerViewViewModel()
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
                        .padding(.leading)
                    
                    Rectangle()
                        .frame(width: 2)
                        .foregroundStyle(.white)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Text(viewModel.timer?.title ?? "Unknwon")
                        Text(viewModel.timer?.date.formatted() ?? "Unknwon")
                            .font(.footnote)
                    }
                    .foregroundStyle(.white)
                    
                    Spacer()
                }
            }
        }
        .onTapGesture {
            withAnimation {
                viewModel.timerTapped()
                print(viewModel.timerSetted)
                if !viewModel.timerSetted {
                    addNewViewIsShowing = true
                }
            }
        }
        .sheet(isPresented: $addNewViewIsShowing, content: {
            CreateTimerView(timerViewModel: viewModel)
        })
    }
}

