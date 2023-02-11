//
//  ImageGalleryContentView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/11.
//

import SwiftUI

struct ImageGalleryContentView: View {
    @StateObject var dataModel = ImageData()
    
    var body: some View {
        NavigationStack {
            ImageGridView()
        }
        .environmentObject(dataModel)
        .navigationViewStyle(.stack)
    }
}

struct ImageGalleryContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGalleryContentView()
    }
}
