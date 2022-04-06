//
//  ContentView.swift
//  Alinea Clone
//
//  Created by Seong-Min Jeong on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader{ g in
            ScrollView {
                Section1()
                Section2()
                APIResponseView().environmentObject(Model())
                    .frame(width: g.size.width - 2, height: g.size.height - 2, alignment: .center)
            }
        }
    }
}
