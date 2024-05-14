//
//  MovieView.swift
//  MovieList
//
//  Created by Andre Lemos on 2024-05-14.
//

import SwiftUI

struct MovieView: View {
    var title: String
    var subTitle: String
    var image: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(image)
                .resizable()
                .scaledToFit()
            Text(title)
                .font(.title)
                .padding()
            Text(subTitle)
                .font(.subheadline)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    MovieView(title: "Title", subTitle: "SubTitle", image: "movie")
}
