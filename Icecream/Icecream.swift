//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = ["Joe" : "Peanut Butter and Chocolate",
                                    "Tim" : "Natural Vanilla",
                                    "Sophie" : "Mexican Chocolate",
                                    "Deniz" : "Natural Vanilla",
                                    "Tom" : "Mexican Chocolate",
                                    "Jim" : "Natural Vanilla",
                                    "Susan" : "Cookies 'N' Cream"
    ]
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var people: [String] = []
        
        for (name, favorite) in favoriteFlavorsOfIceCream {
            if favorite == flavor {
                people.append(name)
            }
        }
        return people
    }
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var number = 0
        
        for (_, favorite) in favoriteFlavorsOfIceCream {
            if flavor == favorite {
                number += 1
            }
        }
        return number
    }
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        
        if let flavor = favoriteFlavorsOfIceCream[person] {
            return flavor
        }
        return nil
    }
    
    // 5.
    
    func replace(flavor: String, forPerson name: String) -> Bool {
        
        if favoriteFlavorsOfIceCream.keys.contains(name) {
            favoriteFlavorsOfIceCream[name] = flavor
            return true
        }
        return false
    }

    // 6.
    
    func remove(person: String) -> Bool {
        
        if favoriteFlavorsOfIceCream.keys.contains(person) {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        }
        return false
    }
    
    // 7.
    
    func numberOfAttendees() -> Int {
        let number = favoriteFlavorsOfIceCream.count
        return number
    }

    // 8.
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream.keys.contains(person) {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
    }
    
    // 9.
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var sentence = ""
        
        for (index, name) in allNames.enumerated() {
            if let flavor = favoriteFlavorsOfIceCream[name] {
                if index + 1 < favoriteFlavorsOfIceCream.count {
                    sentence.append("\(name) likes \(flavor)\n")
                } else {
                    sentence.append("\(name) likes \(flavor)")
                }
            }
        }
        return sentence
    }

}
