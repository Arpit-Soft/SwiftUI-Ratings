//
//  ContentView.swift
//  SwiftUI-Ratings
//
//  Created by Arpit Dixit on 02/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rating: Int?
    
    var body: some View {
        VStack {
            RatingView(rating: $rating)
            Text(rating != nil ? "Star Rating is \(rating!)" : "")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
