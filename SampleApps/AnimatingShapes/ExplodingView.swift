//
//  ExplodingView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/13.
//

import SwiftUI


struct ExplodingView: View {
    @State private var isExploded = false
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                ForEach(0..<75) { _ in
                    Rectangle()
                        .rotation(Angle(degrees: Double.random(in: 0..<360)))
                        .frame(width: 20, height: 20)
                        .foregroundColor(.indigo)
                        .offset(x: isExploded ? (Double.random(in: -1...1) * 500) : 0, y: isExploded ? (Double.random(in: -1...1) * 500) : 0)
                        .opacity(isExploded ? 0 : 1)
                        .animation(.easeInOut.speed(0.1), value: isExploded)
                        .padding()
                }
                Rectangle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(.indigo)
                    .opacity(isExploded ? 0 : 1)
                    .animation(.easeInOut.speed(0.6), value: isExploded)
                    .padding()
            }
            Spacer()
            
            Button {
                isExploded = !isExploded
            } label: {
                if isExploded {
                    Text("BOOOOOOM!!")
                } else {
                    Text("What will happen??")
                }
            }
        }
    }
}

struct ExplodingView_Previews: PreviewProvider {
    static var previews: some View {
        ExplodingView()
    }
}
