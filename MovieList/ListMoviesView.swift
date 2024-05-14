//
//  ListMoviesView.swift
//  MovieList
//
//  Created by Andre Lemos on 2024-05-14.
//

import SwiftUI
struct MovieList {
    let id = UUID()
    let title: String
    let subTitle: String
    let image: String
}
struct ListMoviesView: View {
    
    var movieList = [
        MovieList(title: "A Lista de Schindler", subTitle: "Um retrato poderoso do Holocausto, com atuações marcantes e uma história emocionante sobre a humanidade em tempos de guerra.", image: "schindler"),
        MovieList(title: "O Poderoso Chefão", subTitle: "Uma obra-prima do cinema que explora a vida de uma família mafiosa, com personagens complexos e uma narrativa envolvente.", image: "godfather"),
        MovieList(title: "Pulp Fiction", subTitle: "Um filme cult de Quentin Tarantino, com diálogos afiados, humor negro e uma narrativa não linear que desafia as convenções do cinema.", image: "pulp"),
        MovieList(title: "O Senhor dos Anéis", subTitle: "A primeira parte da épica trilogia de J.R.R. Tolkien, com visuais deslumbrantes, personagens cativantes e uma história emocionante sobre o bem contra o mal.", image: "rings"),
        MovieList(title: "Titanic", subTitle: "Uma história de amor épica ambientada no naufrágio do Titanic, com efeitos especiais impressionantes e atuações memoráveis.", image: "titanic")]
    var body: some View {
        NavigationView{
            VStack {
                List {
                    Text("Lista de Filmes")
                        .font(.title)
                    Image("movie")
                        .resizable()
                        .scaledToFit()
                    ForEach(movieList, id: \.id) { item in
                        NavigationLink(destination: MovieView(title: item.title, subTitle: item.subTitle, image: item.image)) {
                            Text(item.title)
                        }
                    }
                }
                .listStyle(.inset)
            }
        }
    }
}

#Preview {
    ListMoviesView()
}
