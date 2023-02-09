//
//  DatePlannerContentView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/10.
//

import SwiftUI

struct DatePlannerContentView: View {
    @StateObject private var eventData = EventData()
    
    var body: some View {
        NavigationView {
            EventListView()
            Text("Select an Event")
                .foregroundStyle(.secondary)
        }
        .environmentObject(eventData)
    }
}

struct DatePlannerContentView_Previews: PreviewProvider {
    static var previews: some View {
        DatePlannerContentView()
    }
}
