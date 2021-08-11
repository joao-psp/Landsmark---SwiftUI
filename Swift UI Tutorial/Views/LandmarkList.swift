//
//  LandmarkList.swift
//  Swift UI Tutorial
//
//  Created by João Pedro DTI on 11/08/21.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
            landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }

    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only")
                })
                ForEach(filteredLandmarks) { item in
                    NavigationLink(destination: LandmarkDetail(landmark: item)) {
                                LandmarkItem(landmark: item)
                            }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
