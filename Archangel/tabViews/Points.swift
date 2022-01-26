//
//  Points.swift
//  Archangel
//
//  Created by Hesamoddin Aran  on 1/26/22.
//

import SwiftUI
import SlideOverCard



struct Points: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var points: FetchedResults<Point>
    @State private var Tes = ""
    var body: some View {
        NavigationView{
            List(points){ point in
                pointView(title: point.title ?? "Unkown", desc: point.desc ?? "Unkown")
            }
            .navigationTitle("Points")
            .toolbar {
                NavigationLink(destination: addPointsView()) {
                    Image(systemName: "plus")
                }

            }
        }
    }
}

struct Points_Previews: PreviewProvider {
    static var previews: some View {
        Points()
    }
}
