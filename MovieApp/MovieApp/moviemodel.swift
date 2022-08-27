//
//  moviemodel.swift
//  MovieApp
//
//  Created by Moneerah Alajmi on 8/27/22.
//

import Foundation
struct moviemodel: Identifiable{
    let id = UUID()
    var moviename: String
    var movieactors: [String]
    
}

var MyMovies = [
    moviemodel(moviename: "Little Women", movieactors:["Timothée Chalamet", "Saoirse Ronan", "Meryl Streep", "florence Pugh", "Eliza Scanlen"]),
    moviemodel(moviename: "The Help", movieactors: ["Octavia Spencer", "Viola Davis", "Emma Stone"]),
    moviemodel(moviename: "Hidden Figures", movieactors: [ "Janelle Monáe", "Octavia Spencer", "Tiraji P.Henson"])
                 
                 
             ]

