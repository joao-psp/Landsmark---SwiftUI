//
//  CategoryItem.swift
//  Swift UI Tutorial
//
//  Created by João Pedro DTI on 13/08/21.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .frame(width: 150, height: 150)
                .cornerRadius(5.0)
            Text(landmark.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
