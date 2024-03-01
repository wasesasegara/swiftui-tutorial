//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Bisma S Wasesasegara on 02/03/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
