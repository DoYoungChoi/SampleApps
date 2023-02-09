//
//  MyStoryContentView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/09.
//

import SwiftUI

struct MyStoryContentView: View {
    var body: some View {
        NavigationStack {
            StoryPageView(story: story, pageIndex: 0)
        }
    }
}

struct MyStoryContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyStoryContentView()
    }
}
