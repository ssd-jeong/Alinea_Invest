//
//  Section1.swift
//  Alinea Clone
//
//  Created by Seong-Min Jeong on 4/6/22.
//

import SwiftUI

struct Section1: View {
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Your wealth is growing")
                .font(Font.custom("Inter-Regular", size: 17))
            Text("$9,842.98")
                .font(Font.custom("Garnett-Regular", size:38))
                .fontWeight(.bold)
            HStack(alignment: .center, spacing: 4){
                Image("green")
                Text("$1,150.88 (16.33%)")
                    .foregroundColor(Color(red: 0.345, green: 0.50, blue: 0.155, opacity: 1.0))
            }.padding([.top],-16)
        }.position(x:107,y:72)
        
    }
}
