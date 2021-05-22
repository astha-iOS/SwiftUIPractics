//
//  ContentView.swift
//  SwiftUIPractics
//
//  Created by Astha yadav on 14/05/21.
//

import SwiftUI
import UIKit
import Foundation

struct ContentView: View {

    var body: some View {
        
        NavigationView() {
                    
            List { ForEach(alphaList(), id: \.self) { item in
                NavigationLink(destination: DetailView(item: item)){
                HStack{
                Image(item.image ?? "parrot")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipped()
                    .cornerRadius(10.0)
                VStack(alignment: .leading) {
                    Text("  \(item.name)")
                        .font(.headline)
                        .colorScheme(.light)
                    Text("  \(item.description ?? "")")
                        .font(.subheadline)
                    }
                }
            }}
            }.navigationTitle(Text(verbatim: "Alphabates List"))
    }
                        
    }
    
    func alphaList() -> [product]{
        let url = Bundle.main.url(forResource: "AlphabateJSON", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        let products = try? decoder.decode([product].self, from: data)
        return products!
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct product: Codable, Hashable {
    var name: String
    var id: Int
    var description: String?
    var image: String?
    
}
