//
//  CategoryRow.swift
//  Swift UI Tutorial
//
//  Created by João Pedro DTI on 13/08/21.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]

    var body: some View {
        VStack (alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 15)
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top, spacing: 0) {
                        ForEach(items) { land in
                            NavigationLink(destination: LandmarkDetail(landmark: land)) {
                                    CategoryItem(landmark: land)

                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
                        items: Array(landmarks.prefix(7))
        )
    }
}
