//
//  TMCardSliderView.swift
//  Timero
//
//  Created by Přemysl Mikulenka on 01.10.2023.
//

import SwiftUI


struct TMCardSliderView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) { index in
                TMCardView(labelString: index.formatted())
                    .padding(.horizontal)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .automatic))
    }
}
