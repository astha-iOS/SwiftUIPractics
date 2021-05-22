//
//  DetailView.swift
//  SwiftUIPractics
//
//  Created by Astha yadav on 19/05/21.
//

import SwiftUI
import UIKit
import Foundation

struct DetailView: View {
    let item: product
    var body: some View {
        
        VStack(spacing:0){
            Text(item.name)
                .font(.system(size: 200))
                .fontWeight(.bold)
                .padding(0)
                .foregroundColor(Color.red)
                
            Image(item.image ?? "apple")
                .resizable()
                .frame(width: 300, height: 350, alignment: .center)
                .clipped()
                .cornerRadius(10.0)
                .padding(0)
                .aspectRatio(contentMode: .fit)
            
            Text(item.description ?? "")
                .font(.system(size: 30))
                .fontWeight(.medium)
                .padding(.top)
        }
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: product(
            name: "Charmander",
            id: 0,
            description: "description", image: "apple"
          ))
    }
}
