//
//  PandaMemeContentView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/12.
//

import SwiftUI

struct PandaMemeContentView: View {
    @StateObject private var fetcher = PandaCollectionFetcher()
    
    var body: some View {
        NavigationStack {
            MemeCreator()
                .environmentObject(fetcher)
        }
    }
}

struct PandaMemeContentView_Previews: PreviewProvider {
    static var previews: some View {
        PandaMemeContentView()
    }
}
