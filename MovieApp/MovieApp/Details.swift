//
//  Details.swift
//  MovieApp
//
//  Created by Moneerah Alajmi on 8/27/22.
//

import SwiftUI

struct Details: View {
    var ourmovie: moviemodel
    var body: some View {
        ZStack{
            Color.black.opacity(0.7)
            Image(ourmovie.moviename).opacity(0.3)
                .blur(radius: 10)
                .ignoresSafeArea()
                
        VStack{
            Image(ourmovie.moviename)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 250, height: 250)
                .ignoresSafeArea()
            
            Text(ourmovie.moviename)
                .font(.system(size: 30, weight: .medium, design: .rounded))
                .foregroundColor(.white)
            ScrollView(.horizontal){
                HStack{
                    ForEach(ourmovie.movieactors, id:\.self){ act in
                        VStack{
                        Text(act)
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                        Image(act)
                                .resizable()
                                .scaledToFit()
                            clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 200, height: 200)
                    }
                    }
                }
            }.frame(width: 400, height: 300)
        }
    }
}
}
struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(ourmovie: moviemodel(moviename: "The Help", movieactors: ["Octavia Spencer","Emma Stone", "Viola Davis"]))
    }
}
