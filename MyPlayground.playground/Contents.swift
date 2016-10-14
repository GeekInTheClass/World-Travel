//: Playground - noun: a place where people can play

import UIKit

public class Travel{
    enum NationalName:Int{
        case INDIA = 25
        case USA = 14
        case JAPAN = 5
        case LAOS = 10
        case CHINA = 8
    }
}

var TravelStory:[String:Int] = ["INDIA":30,"USA":3,"JAPAN":5,"LAOS":5,"CHINA":6] //현재까지 연재한 여행기 편수
var TravelStoryEnd:[String:Int] = ["INDIA":40,"USA":14,"JAPAN":5,"LAOS":10,"CHINA":8] //완결 편수

var count:[String] = []
var count2:[String] = []

for Travels in TravelStory{
    if Travels.value >= 10{
        count += [Travels.key]
    }
} // 10편이상 연재한 여행기의 나라를 분류하시오  ㅇㅇ
print(count)

for (Travelskey, value) in TravelStory{
    if value == TravelStoryEnd[Travelskey]{
        count2 += [Travelskey]
    }
}
print(count2) //완결낸 여행기를 검색하시오  ㅇㅇ


var India : Int
for Travels in TravelStory{
    
    if (Travels.key) == "INDIA"
    { India = Travels.value}
}

//인디아의 밸류값은

var notIndia : [Int] = []
for Travels in TravelStory{
    
    if (Travels.key) != "INDIA"
    { notIndia += [Travels.value]}
}

//인디아가 아닌 밸류 값들의 집합은?∂

var notUSA = 0
for Travels in TravelStory{
    
    if (Travels.key) != "USA"
    { notUSA += Travels.value}
}

//USA 가 아닌 밸류들의 합은?


//1.
let Upside10 = TravelStory.filter{$0.1 >= 10}
print("\(Upside10)")



//2.
let endStory = TravelStory.filter{TravelStoryEnd[$0.key] == $0.value}
print("\(endStory)")

//3.  ?
let valueIndia = TravelStory.filter{$0.0 == "INDIA"}
print("\(valueIndia)")