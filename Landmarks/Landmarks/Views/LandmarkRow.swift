//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Bisma S Wasesasegara on 02/03/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct Group: PreviewProvider {
    static var previews: some View {
        List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}

struct TurtleRock: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}

struct Salmon: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[1])
    }
}
