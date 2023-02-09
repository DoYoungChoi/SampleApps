//
//  EventTask.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/10.
//

import Foundation

struct EventTask: Identifiable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
