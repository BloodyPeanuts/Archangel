//
//  pointView.swift
//  Archangel
//
//  Created by Hesamoddin Aran  on 1/26/22.
//

import SwiftUI

struct pointView: View {
    @State var title: String
    @State var desc: String
    var body: some View {
        HStack{
            Image(systemName: "circle.dashed")
                .font(.largeTitle)
                .foregroundColor(.red)
            VStack(alignment: .leading){
                Text(title)
                    .bold()
                    .font(.title2)
                    .foregroundColor(.yellow)
                Text(desc)
                    .font(.caption)
            }
        }
        .padding()
    }
}

struct pointView_Previews: PreviewProvider {
    static var previews: some View {
        pointView(title: "Test", desc: "Testlihuefglwgegwlwg;gwe;gkwe")
    }
}










