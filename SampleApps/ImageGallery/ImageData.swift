//
//  ImageData.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/11.
//

import Foundation

class ImageData: ObservableObject {
    @Published var items: [ImageItem] = []
    
    init() {
        if let documentDirectory = FileManager.default.documentDirectory {
            let urls = FileManager.default.getContentsOfDirectory(documentDirectory).filter { $0.isImage }
            for url in urls {
                let item = ImageItem(url: url)
                items.append(item)
            }
        }
        
        if let urls = Bundle.main.urls(forResourcesWithExtension: "jpg", subdirectory: nil) {
            for url in urls {
                let item = ImageItem(url: url)
                items.append(item)
            }
        }
    }
    
    func addImageItem(_ item: ImageItem) {
        items.append(item)
    }
    
    func removeImageItem(_ item: ImageItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
            FileManager.default.removeItemFromDocumentDirectory(url: item.url)
        }
    }
}


extension URL {
    var isImage: Bool {
        let imageExtensions = ["jpg", "jpeg", "png", "gif", "heic"]
        return imageExtensions.contains(self.pathExtension)
    }
}
