//
//  BubbleLevelContentView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/12.
//

import SwiftUI

struct BubbleLevelContentView: View {
    @StateObject private var motionDetector = MotionDetector(updateInterval: 0.01)
    
    var body: some View {
        VStack {
            BubbleLevel()
            OrientationDataView()
                .padding(.top, 80)
        }
        .environmentObject(motionDetector)
        .onAppear {
            motionDetector.start()
        }
        .onDisappear {
            motionDetector.stop()
        }
    }
}

struct BubbleLevelContentView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleLevelContentView()
    }
}
