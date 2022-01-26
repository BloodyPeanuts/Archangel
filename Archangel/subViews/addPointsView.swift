//
//  addPointsView.swift
//  Archangel
//
//  Created by Hesamoddin Aran  on 1/26/22.
//

import SwiftUI

struct addPointsView: View {
    @Environment(\.managedObjectContext) var moc
    
    @State private var ttitle = ""
    @State private var tdesc = ""
    var body: some View {
        NavigationView{
            Form{
                TextField("Title", text: $ttitle)
                TextField("Description", text: $tdesc)
                
                Section{
                    Button("Add"){
                        
                        let point = Point(context: moc)
                        point.title = ttitle
                        point.desc = tdesc
                        
                        try? moc.save()
                        ttitle = ""
                        tdesc = ""
                    }
                }
            }
        }
    }
}

struct addPointsView_Previews: PreviewProvider {
    static var previews: some View {
        addPointsView()
    }
}
