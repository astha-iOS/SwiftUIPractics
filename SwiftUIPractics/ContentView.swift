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
        
            VStack{
            VStack{
                Image("peacock")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2.2, alignment: .center)
            }.edgesIgnoringSafeArea(.top)
                
            VStack{
                
                List (0..<birdData.count) { index in
                    let b = birdData[index]
               
                    Image(b.image)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .clipped()
                        
                        .cornerRadius(10.0)
                        .onTapGesture {
                            print("Click bird")
                               
                        }

                    VStack(alignment: .leading) {
                        Text(b.name)
                            .font(.headline)
                            .colorScheme(.light)
                        Text(b.description)
                            .font(.subheadline)
                        }
                    }
                
                
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct BirdView : View {
    
    var data : Bird
    
    var body: some View{
        HStack{
            Image(self.data.image)
            VStack(alignment: .leading, spacing: 5, content: {
                Text(self.data.name)
                    .font(.headline)
                    .colorScheme(.light)
                Text(self.data.description)
                    .font(.subheadline)
                    
            })
        }
    }
    
}

struct Bird : Identifiable {
    var id : Int
    var image : String
    var name : String
    var description : String
}

var birdData = [
    Bird(id: 1, image: "parrot", name: "Parrot", description: "Having green color"),
    Bird(id: 2, image: "pigeon", name: "Pigeon", description: "Having gray color"),
    Bird(id: 3, image: "peacock", name: "Peacock", description: "Having Blue color")

]
