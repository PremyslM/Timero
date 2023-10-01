//
//  TMBentoTimerContainerView.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 01.10.2023.
//

import SwiftUI


struct TMBentoTimerContainerView<Content: View>: View {
    
    let content: () -> Content
    
    var body: some View {
        ZStack {
            VStack(content: content)
                .padding()
        }
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.black, lineWidth: 0.8)
        }
    }
}
