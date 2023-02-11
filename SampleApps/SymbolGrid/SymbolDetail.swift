//
//  SymbolDetail.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/10.
//

import SwiftUI

struct SymbolDetail: View {
    var symbol: Symbol
    
    var body: some View {
        VStack {
            Text(symbol.name)
                .font(.system(.largeTitle, design: .rounded))
            
            Image(systemName: symbol.name)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.accentColor)
        }
        .padding()
    }
}

struct SymbolDetail_Previews: PreviewProvider {
    static var previews: some View {
        SymbolDetail(symbol: Symbol(name: "magnifyingglass"))
    }
}
