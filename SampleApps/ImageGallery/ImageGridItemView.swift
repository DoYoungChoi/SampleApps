//
//  ImageGridItemView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/11.
//

import SwiftUI

struct ImageGridItemView: View {
    let size: Double
    let item: ImageItem
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            AsyncImage(url: item.url) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: size, height: size)
        }
    }
}

struct ImageGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        if let url = Bundle.main.url(forResource: "mushy1", withExtension: "jpg") {
            ImageGridItemView(size: 50, item: ImageItem(url: url))
        }
    }
}
