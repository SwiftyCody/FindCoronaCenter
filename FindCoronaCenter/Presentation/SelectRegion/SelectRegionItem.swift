//
//  SelectRegionItem.swift
//  FindCoronaCenter
//
//  Created by solgoon on 2023/01/14.
//

import SwiftUI

struct SelectRegionItem: View {
    var region: Center.Sido
    var count: Int
    var body: some View {
        ZStack {
            Color(white: 0.9)
            
            VStack {
                Text(region.rawValue)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                Text("(\(count))")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct SelectRegionItem_Previews: PreviewProvider {
    static var previews: some View {
        let region = Center.Sido.경상남도
        SelectRegionItem(region: region, count: 3)
    }
}
