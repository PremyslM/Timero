//
//  MainContentView.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 01.10.2023.
//

import SwiftUI

struct MainMenuView: View {
    
    private let viewModel: MainMenuViewViewModel = MainMenuViewViewModel()
    @State private var isRunning: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                TMCardSliderView()
                    .frame(height: 200)
                
                Spacer()
                
                ZStack {
                    Color(UIColor.systemGray6)
                    
                    VStack(spacing: 30) {
                        TMProgressBarView()
                        
                        VStack(spacing: 10) {
                            ForEach(0..<3) { _ in // Buttons
                                TMBentoTimerView(TMTimer(title: "TestTimer", timeValue: 125, isDone: false))
                                    .frame(height: 75)                                                                                                            
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                }
                .frame(height: 350)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    MainMenuView()
}
