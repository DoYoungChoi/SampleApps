//
//  SpinningView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/13.
//

import SwiftUI

struct ResetEllipse: View {
    var body: some View {
        Ellipse()
            .frame(width: 200, height: 200)
            .foregroundColor(.orange)
    }
}
struct SpinningEllipse: View {
        @State private var width: CGFloat = 200

        var body: some View {
            Ellipse()
                .frame(width: width, height: 200)
                .foregroundColor(.orange)
                .onAppear {
                    withAnimation(.easeInOut.repeatForever(autoreverses: true).speed(2)) {
                        width = 0
                    }
                }
        }
}

struct SpinningView: View {
    @State private var isSpinnng = false
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                if isSpinnng {
                    SpinningEllipse()
                } else {
                    ResetEllipse()
                }
            }
            Spacer()
            
            Button {
                isSpinnng = !isSpinnng
            } label: {
                if isSpinnng {
                    Text("Please, stop!!!")
                } else {
                    Text("Let's get Dizzzzzzzzzzzzy")
                }
            }
        }
    }
}

struct SpinningView_Previews: PreviewProvider {
    static var previews: some View {
        SpinningView()
    }
}
