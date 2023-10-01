//
//  TMBentoTimerView.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 01.10.2023.
//

import SwiftUI


struct TMBentoTimerView: View {
    var body: some View {
        ZStack {
            Color.black
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack {
                Image(systemName: "plus")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 18))
            }
        }
    }
}
