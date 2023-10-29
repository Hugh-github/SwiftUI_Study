//
//  ProfileCircleImage.swift
//  SwiftUI_Study
//
//  Created by dhoney96 on 2023/10/26.
//

import SwiftUI

struct ProfileCircleImage: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 70))
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color(red: 192/255, green: 192/255, blue: 192/255))
            
            Text(name)
                .font(.subheadline)
                .bold()
                .padding(.leading, 10)
        }
    }
}

struct ProfileCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCircleImage(name: "Dhoney96")
    }
}
