//
//  LandmarkRow.swift
//  Landmarks-tutorial-swiftui
//
//  Created by Gemuele Aludino on 6/15/21.
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

struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0]).previewLayout(.fixed(width: 300, height: 70))
            LandmarkRow(landmark: landmarks[1]).previewLayout(.fixed(width: 300, height: 70))
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}