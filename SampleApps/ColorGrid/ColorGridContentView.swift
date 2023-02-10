//
//  ColorGridContentView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/10.
//

import SwiftUI

struct ColorGridContentView: View {
    let columnLayout = Array(repeating: GridItem(), count: 3)
    
    @State private var selectedColor = Color.brown
    
    let allColors: [Color] = [
        .red,
        .pink,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .cyan,
        .blue,
        .indigo,
        .purple,
        .brown,
        .white,
        .gray,
        .black,
        .accentColor,
        .secondary,
        .primary,
    ]
    
    var body: some View {
        VStack {
            Text("Selected Color")
                .shadow(radius: 5.0)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(selectedColor)
                .padding(10)
            
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(allColors, id: \.description) { color in
                        Button {
                            selectedColor = color
                        } label: {
                            RoundedRectangle(cornerRadius: 4.0)
                                .aspectRatio(1.0, contentMode: .fit)
                                .foregroundColor(color)
                                .border(.gray)
                                .cornerRadius(5)
                        }
                    }
                }
            }
        }
    }
}

struct ColorGridContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorGridContentView()
    }
}
