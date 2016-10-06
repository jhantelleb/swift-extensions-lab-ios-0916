//
//  Extensions.swift
//  Extensions
//
//  Created by Jhantelle Belleza on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {

    var pigLatin: String {
        get {
            var returnString: String = ""
            let characterArray = self.characters.split(separator: " ")
            var returnArray = [String]()
            for name in characterArray {
                var stringArray = name.split{$0 == " "}.map(String.init)
                for (index, var char) in stringArray.enumerated() {
                    char.characters.append(char.characters.popFirst()!)
                    stringArray.remove(at: index)
                    stringArray.insert(char, at: index)
                    if stringArray[index].characters.count > 1 {
                        returnString = (stringArray[index] + "ay")
                        returnArray.append(returnString.capitalized)
                    } else {
                        returnString = stringArray[index]
                        returnArray.append(returnString.capitalized)
                    }
                }
            }
            returnString = returnArray.joined(separator: " ")
            return returnString }
    }
    
    var points: Int {
        var score = 0
        let vowelsArray = ["a", "e", "i", "o", "u"]
        let consonantsArray = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z" ]
        
        for selfValue in self.lowercased().characters {
            if vowelsArray.contains(String(selfValue)) { score += 2 }
            else if consonantsArray.contains(String(selfValue)) { score += 1 }
            else { score += 0 }
        }
        return score
    }
    
    func whisper() -> String { return self.lowercased() }
    func shout() -> String { return self.uppercased() }
    
    var unicornLevel: String {
        var stringReturn = ""
        for char in self.characters {
            if char != " " { stringReturn += "🦄" }
        }
        return stringReturn
    }
}


extension Int {
    func half() -> Int {
       return self/2
    }
    
    func isDivisible(by: Int) -> Bool { return self % by == 0 }
    
    var squared: Int { return Int(sqrt(Double(self))) }
    var halved: Int { return half() }
}


