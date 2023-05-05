//
//  SuperHero.swift
//  HeroWidget
//
//  Created by Matteo Buompastore on 05/05/23.
//

import Foundation

struct SuperHero : Identifiable, Codable {
    
    let image : String
    let name : String
    let realName : String
    
    var id: String { name }
    
}

let babySuperhero = SuperHero(image: "baby_superhero", name: "Baby Super Hero", realName: "Baby Clark")
let batman = SuperHero(image: "batman", name: "Batman", realName: "Bruce Wayne")
let ironMan = SuperHero(image: "ironMan", name: "Iron Man", realName: "Tony Stark")
let wolverine = SuperHero(image: "wolverine", name: "Wolverine", realName: "Polverine")
let spiderman = SuperHero(image: "spiderman", name: "Spiderman", realName: "Peter Parker")
