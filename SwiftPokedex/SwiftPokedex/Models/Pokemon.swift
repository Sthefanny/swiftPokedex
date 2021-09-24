//
//  Pokemon.swift
//  SwiftPokedex
//
//  Created by Sthefanny Gonzaga on 24/09/21.
//

import Foundation
import SwiftUI

struct PokemonList: Decodable {
    let pokemon: [Pokemon]
}

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let num: String
    let name: String
    let img: String
    let type: [String]
    let height: String?
    let width: String?
    let weaknesses: [String]
}


enum Type {
    case grass
    case poison
    case fire
    case ice
    case flying
    case psychic
    case water
    case ground
    case rock
    case undefined
}


func getType(value: String) -> Type {
    switch value {
    case "Grass":
        return .grass
    case "Poison":
        return .poison
    case "Fire":
        return .fire
    case "Ice":
        return .ice
    case "Flying":
        return .flying
    case "Psychic":
        return .psychic
    case "Water":
        return .water
    case "Ground":
        return .ground
    case "Rock":
        return .rock
    default:
        return .undefined
    }
}


func getColorByType(type: Type) -> Color { 
    switch type {
    case .grass:
        return Color.green
    case .poison:
        return Color.purple
    case .fire:
        return Color.orange
    case .ice:
        return Color.blue
    case .flying:
        return Color.blue
    case .psychic:
        return Color.pink
    case .water:
        return Color.blue
    case .ground:
        return Color.gray
    case .rock:
        return Color.gray
    case .undefined:
        return Color.black
    }
}
