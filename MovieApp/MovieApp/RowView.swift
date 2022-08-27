//
//  RowView.swift
//  MovieApp
//
//  Created by Moneerah Alajmi on 8/27/22.
//

import SwiftUI

struct RowView: View {
    @State var movie: String
    var body: some View {
        HStack{
            Image(movie)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 160, height: 170)
            Text(movie)
            
        }
    }
}
struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(movie: "")
    }
}
