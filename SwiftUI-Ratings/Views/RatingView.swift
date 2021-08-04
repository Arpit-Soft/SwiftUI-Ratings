//
//  RatingView.swift
//  SwiftUI-Ratings
//
//  Created by Arpit Dixit on 04/08/21.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int?
    
    private func startType(_ index: Int) -> String {
        if let rating = rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }

    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(systemName: startType(index))
                    .foregroundColor(.yellow)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3))
    }
}
