//
//  LandmarkItem.swift
//  Swift UI Tutorial
//
//  Created by João Pedro DTI on 11/08/21.
//

import SwiftUI

struct LandmarkItem: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkItem_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkItem(landmark: landmarks[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
