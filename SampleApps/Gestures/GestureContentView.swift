//
//  GestureContentView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/12.
//

import SwiftUI

struct GestureContentView: View {
    var body: some View {
        TabView {
            TapView()
                .tabItem {
                    Label("Tap", systemImage: "hand.point.up.left.fill")
                }
            
            LongPressView()
                .tabItem {
                    Label("Long Press", systemImage: "hand.tap.fill")
                }
            
            DragView()
                .tabItem {
                    Label("Drag", systemImage: "hand.draw")
                }
            
            RotateView()
                .tabItem {
                    Label("Rotate", systemImage: "crop.rotate")
                }
            
            SingleLineView()
                .tabItem {
                    Label("Line", systemImage: "pencil.and.outline")
                }
        }
    }
}

struct GestureContentView_Previews: PreviewProvider {
    static var previews: some View {
        GestureContentView()
    }
}
