//
//  TMCardView.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 01.10.2023.
//

import SwiftUI

struct TMCardView: View {
    
    let labelString: String
    
    var body: some View {
        ZStack {
            Color.black
            
            VStack {
                Text(labelString)
                    .font(.title)
                    .foregroundStyle(Color.white)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}


#Preview {
    TMCardView(labelString: "Lorem Ipsum")
}
