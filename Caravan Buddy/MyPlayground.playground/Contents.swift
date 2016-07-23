//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"





let commaSeparatedNames = "21 june 2016 =  Ive, Cue, Ahrendts"
let names = commaSeparatedNames.componentsSeparatedByString("= ")
// -> ["Cook", "Ive", "Cue", "Ahrendts"]
names[0] // -> "Cook"

var test:String;()


test = names[0]
print(test)






let fullName = "First Last ! 33993838"
let fullNameArr = fullName.characters.split{$0 == "!"}.map(String.init)
// or simply:
// let fullNameArr = fullName.characters.split{" "}.map(String.init)

fullNameArr[0] // First
fullNameArr[1] // Last