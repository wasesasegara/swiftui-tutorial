//
//  ContentView.swift
//  Landmarks
//
//  Created by Bisma S Wasesasegara on 02/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
