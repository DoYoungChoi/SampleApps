//
//  SizingView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/12.
//

import SwiftUI

struct SizingView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.darkBrown)
                    .frame(maxWidth: 200, maxHeight: 150)
                
                VStack {
                    Text("Roses are red,")
                    Image("Rose")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 50)
                        .foregroundColor(.themeRed)
                    Text("violets ar blue,")
                }
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.darkBrown)
                    .frame(maxWidth: 200, maxHeight: 150)
                
                VStack {
                    Text("I just love")
                    Image("Heart")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 50)
                        .foregroundColor(.themeRed)
                    Text("coding with you!")
                }
            }
        }
        .font(.headline)
        .foregroundColor(.paleOrange)
    }
}

struct SizingView_Previews: PreviewProvider {
    static var previews: some View {
        SizingView()
    }
}
