//
//  ImageItem.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/11.
//

import Foundation

struct ImageItem: Identifiable {
    let id = UUID()
    let url: URL
}

extension ImageItem: Equatable {
    static func ==(lhs: ImageItem, rhs: ImageItem) -> Bool {
        return lhs.id == rhs.id
    }
}
