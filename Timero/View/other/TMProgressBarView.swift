//
//  TMProgressBarView.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 01.10.2023.
//

import SwiftUI


struct TMProgressBarView: View {
    var body: some View {
        ZStack {
            // Progress background
            Rectangle()
                .foregroundStyle(Color(UIColor.systemGray4))
                .frame(height: 20)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
            // Progress indicator
            HStack {
                Rectangle()
                    .foregroundStyle(Color(UIColor.systemGray))
                    .frame(width: 200, height: 5)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .padding(.horizontal, 6.25)// Width will indicate the progress bar indicated value.
                
                Spacer()
            }
        }
    }
}
  
