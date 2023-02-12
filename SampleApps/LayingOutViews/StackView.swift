//
//  StackView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/11.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.themeBlue)
                Circle()
                    .foregroundColor(.themePink)
            }
            ZStack {
                Rectangle()
                    .foregroundColor(.themeBlue)
                HStack {
                    Circle()
                        .foregroundColor(.themeRed)
                    Circle()
                        .foregroundColor(.themeOrange)
                }
            }
            
            NavigationLink(destination: StackView()) {
                Button {
                } label: {
                    Text("Go to Sizing View")
                        .padding()
                        .background(.gray.opacity(0.25))
                        .cornerRadius(8)
                }
            }
        }
        .navigationTitle("Stack View")
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
