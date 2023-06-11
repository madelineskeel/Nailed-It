//
//  Quiz.swift
//  NailColor
//
//  Created by Madeline Skeel on 2/25/23.
//

import Foundation
//THIS IS WHERE THE QUIZ LOGIC WILL HAPPEN
import SwiftUI

public class Quiz: ObservableObject{
    
    var scoreDict: [String: Int] = ["White":0, "Nude":0, "Brown":0, "Chocolate":0, "Pink Nude":0, "Sheer Pink":0, "Hot Pink":0, "Light Pink":0, "Neon Pink":0, "Barbie Pink":0, "Mauve":0, "Magenta":0, "Bubblegum Pink":0, "Classic Red":0, "Cherry Red":0, "Crimson Red":0, "Fire Engine Red":0, "Wine Red":0, "Ruby Red":0, "Maroon":0, "Burgundy":0, "Orange Red":0, "Coral":0, "Salmon":0, "Ginger Orange":0, "Burnt Orange":0, "Neon Orange":0, "Lemon Yellow":0, "Canary Yellow":0, "Pastel Yellow":0, "Neon Yellow":0, "Golden Yellow":0, "Creamy Yellow/Nude":0, "Emerald Green":0, "Mint Green":0, "Olive Green":0, "Lime Green":0, "Forest Green":0, "Seafoam Green":0, "Navy Blue":0, "Sky Blue":0, "Royal Blue":0, "Turquoise Blue":0, "Teal Blue":0, "Denim Blue":0, "Lavender":0, "Grape Purple":0, "Plum Purple":0, "Eggplant Purple":0, "Vibrant Purple":0, "Periwinkle Purple":0, "Lilac":0, "Gray":0, "Black":0, "Electric Blue":0]
    
    
    
    var colorRank = [(key: "White", value: 0), (key: "Nude", value: 0), (key: "Brown", value: 0), (key: "Chocolate", value: 0), (key: "Pink Nude", value: 0), (key: "Sheer Pink", value: 0), (key: "Hot Pink", value: 0), (key: "Light Pink", value: 0), (key: "Neon Pink", value: 0), (key: "Barbie Pink", value: 0), (key: "Mauve", value: 0), (key: "Magenta", value: 0), (key: "Bubblegum Pink", value: 0), (key: "Classic Red", value: 0), (key: "Cherry Red", value: 0), (key: "Crimson Red", value: 0), (key: "Fire Engine Red", value: 0), (key: "Wine Red", value: 0), (key: "Ruby Red", value: 0), (key: "Maroon", value: 0), (key: "Burgundy", value: 0), (key: "Orange Red", value: 0), (key: "Coral", value: 0), (key: "Salmon", value: 0), (key: "Ginger Orange", value: 0), (key: "Burnt Orange", value: 0), (key: "Neon Orange", value: 0), (key: "Lemon Yellow", value: 0), (key: "Canary Yellow", value: 0), (key: "Pastel Yellow", value: 0), (key: "Neon Yellow", value: 0), (key: "Golden Yellow", value: 0), (key: "Creamy Yellow/Nude", value: 0), (key: "Emerald Green", value: 0), (key: "Mint Green", value: 0), (key: "Olive Green", value: 0), (key: "Lime Green", value: 0), (key: "Forest Green", value: 0), (key: "Seafoam Green", value: 0), (key: "Navy Blue", value: 0), (key: "Sky Blue", value: 0), (key: "Royal Blue", value: 0), (key: "Turquoise Blue", value: 0), (key: "Teal Blue", value: 0), (key: "Denim Blue", value: 0), (key: "Lavender", value: 0), (key: "Grape Purple", value: 0), (key: "Plum Purple", value: 0), (key: "Eggplant Purple", value: 0), (key: "Vibrant Purple", value: 0), (key: "Periwinkle Purple", value: 0), (key: "Lilac", value: 0), (key: "Gray", value: 0), (key: "Black", value: 0), (key: "Electric Blue", value: 0)]
    
    
    
    
    
    let answers1 = ["Extra Short", "Short", "Medium", "Long", "Extra Long"]
    let answers2 = ["Square", "Almond", "Coffin", "Round", "Oval", "Stilleto", "Natural"]
    let answers3 = ["Every Two Weeks", "Once a Month", "A Few Times a Year", "Almost Never"]
    let answers4 = ["You’re Going on Vacation", "You Have a Formal Event", "To Express Creativity", "Self Care", "Just for Fun"]
    let answers5 = ["Energetic", "Thoughtful", "Creative", "Confident", "Easygoing"]
    let answers6 = ["Aries, Leo, or Sagittarius", "Taurus, Virgo, or Capricorn", "Gemini, Libra, or Aquarius", "Cancer, Scorpio or Pisces"]
    let answers7 = ["Content", "Overwhelmed", "Bored", "Excited", "Optimistic", "Tired"]
    let answers8 = ["Pink/Red", "Orange/Yellow", "Green/Blue", "Purple", "Nude/White", "Other/Unpolished"]
    let answers9 = ["Warm", "Cool", "Neutral", "Im Not Sure"]
    let answers10 = ["Polished and Professional", "Colorful and Creative", "Trendy and Fashionable", "Bold and Daring", "Edgy and Unique", "Natural and Understated"]
    let answers11 = ["Pastel", "Neon", "Vibrant", "Dark"]
    let answers12 = ["Yes", "No"]
    let answers13 = ["Green", "Blue", "Brown", "Hazel", "Silver"]
    let answers14 = ["Gold", "Silver", "Mixed", "None"]
    let answers15 = ["Spring", "Summer", "Fall", "Winter"]

    
    
    var locked1 = false
    var lockedSelection1 = 0
    
    var locked2 = false
    var lockedSelection2 = 0
    
    var locked3 = false
    var lockedSelection3 = 0
    
    var locked4 = false
    var lockedSelection4 = 0
    
    var locked5 = false
    var lockedSelection5 = 0
    
    var locked6 = false
    var lockedSelection6 = 0
    
    var locked7 = false
    var lockedSelection7 = 0
    
    var locked8 = false
    var lockedSelection8 = 0
    
    var locked9 = false
    var lockedSelection9 = 0
    
    var locked10 = false
    var lockedSelection10 = 0
    
    var locked11 = false
    var lockedSelection11 = 0
    
    var locked12 = false
    var lockedSelection12 = 0
    
    var locked13 = false
    var lockedSelection13 = 0
    
    var locked14 = false
    var lockedSelection14 = 0
    
    var locked15 = false
    var lockedSelection15 = 0
    
    var returnResult = ""
    
    
    func getResults()-> [(key: String, value: Int)]{
        colorRank = scoreDict.sorted { $0.1 > $1.1 }
        print(colorRank)
        return colorRank
    }
    
    
    func resetQuiz(){
        scoreDict = ["White":0, "Nude":0, "Brown":0, "Chocolate":0, "Pink Nude":0, "Sheer Pink":0, "Hot Pink":0, "Light Pink":0, "Neon Pink":0, "Barbie Pink":0, "Mauve":0, "Magenta":0, "Bubblegum Pink":0, "Classic Red":0, "Cherry Red":0, "Crimson Red":0, "Fire Engine Red":0, "Wine Red":0, "Ruby Red":0, "Maroon":0, "Burgundy":0, "Orange Red":0, "Coral":0, "Salmon":0, "Ginger Orange":0, "Burnt Orange":0, "Neon Orange":0, "Lemon Yellow":0, "Canary Yellow":0, "Pastel Yellow":0, "Neon Yellow":0, "Golden Yellow":0, "Creamy Yellow/Nude":0, "Emerald Green":0, "Mint Green":0, "Olive Green":0, "Lime Green":0, "Forest Green":0, "Seafoam Green":0, "Navy Blue":0, "Sky Blue":0, "Royal Blue":0, "Turquoise Blue":0, "Teal Blue":0, "Denim Blue":0, "Lavender":0, "Grape Purple":0, "Plum Purple":0, "Eggplant Purple":0, "Vibrant Purple":0, "Periwinkle Purple":0, "Lilac":0, "Gray":0, "Black":0, "Electric Blue":0]
        
        colorRank = [(key: "White", value: 0), (key: "Nude", value: 0), (key: "Brown", value: 0), (key: "Chocolate", value: 0), (key: "Pink Nude", value: 0), (key: "Sheer Pink", value: 0), (key: "Hot Pink", value: 0), (key: "Light Pink", value: 0), (key: "Neon Pink", value: 0), (key: "Barbie Pink", value: 0), (key: "Mauve", value: 0), (key: "Magenta", value: 0), (key: "Bubblegum Pink", value: 0), (key: "Classic Red", value: 0), (key: "Cherry Red", value: 0), (key: "Crimson Red", value: 0), (key: "Fire Engine Red", value: 0), (key: "Wine Red", value: 0), (key: "Ruby Red", value: 0), (key: "Maroon", value: 0), (key: "Burgundy", value: 0), (key: "Orange Red", value: 0), (key: "Coral", value: 0), (key: "Salmon", value: 0), (key: "Ginger Orange", value: 0), (key: "Burnt Orange", value: 0), (key: "Neon Orange", value: 0), (key: "Lemon Yellow", value: 0), (key: "Canary Yellow", value: 0), (key: "Pastel Yellow", value: 0), (key: "Neon Yellow", value: 0), (key: "Golden Yellow", value: 0), (key: "Creamy Yellow/Nude", value: 0), (key: "Emerald Green", value: 0), (key: "Mint Green", value: 0), (key: "Olive Green", value: 0), (key: "Lime Green", value: 0), (key: "Forest Green", value: 0), (key: "Seafoam Green", value: 0), (key: "Navy Blue", value: 0), (key: "Sky Blue", value: 0), (key: "Royal Blue", value: 0), (key: "Turquoise Blue", value: 0), (key: "Teal Blue", value: 0), (key: "Denim Blue", value: 0), (key: "Lavender", value: 0), (key: "Grape Purple", value: 0), (key: "Plum Purple", value: 0), (key: "Eggplant Purple", value: 0), (key: "Vibrant Purple", value: 0), (key: "Periwinkle Purple", value: 0), (key: "Lilac", value: 0), (key: "Gray", value: 0), (key: "Black", value: 0), (key: "Electric Blue", value: 0)]
        
        locked1 = false
        lockedSelection1 = 0
        
        locked2 = false
        lockedSelection2 = 0
        
        locked3 = false
        lockedSelection3 = 0
        
        locked4 = false
        lockedSelection4 = 0
        
        locked5 = false
        lockedSelection5 = 0
        
        locked6 = false
        lockedSelection6 = 0
        
        locked7 = false
        lockedSelection7 = 0
        
        locked8 = false
        lockedSelection8 = 0
        
        locked9 = false
        lockedSelection9 = 0
        
        locked10 = false
        lockedSelection10 = 0
        
        locked11 = false
        lockedSelection11 = 0
        
        locked12 = false
        lockedSelection12 = 0
        
        locked13 = false
        lockedSelection13 = 0
        
        locked14 = false
        lockedSelection14 = 0
        
        locked15 = false
        lockedSelection15 = 0
        
        returnResult = ""
        
    }
    
    //NAIL LENGTH
    func processSelection1(for selection: Int){

        //EXTRA SHORT
        if(lockedSelection1 == 0 && locked1 == true){
            scoreDict["White"]!-=10
            scoreDict["Nude"]!-=10
            scoreDict["Pink Nude"]!-=10
            scoreDict["Sheer Pink"]!-=5
            scoreDict["Light Pink"]!-=5
            
            scoreDict["Classic Red"]!-=10
            scoreDict["Cherry Red"]!-=5
            scoreDict["Fire Engine Red"]!-=10
            scoreDict["Wine Red"]!-=5
            scoreDict["Ruby Red"]!-=5
            
            scoreDict["Canary Yellow"]!-=5
            scoreDict["Pastel Yellow"]!-=10
            
            scoreDict["Emerald Green"]!-=10
            scoreDict["Forest Green"]!-=5
            scoreDict["Navy Blue"]!-=10
            scoreDict["Sky Blue"]!-=10
            scoreDict["Denim Blue"]!-=10
            
            scoreDict["Plum Purple"]!-=5
            scoreDict["Eggplant Purple"]!-=5
            scoreDict["Lilac"]!-=5
            scoreDict["Electric Blue"]!-=10
            
            
            
            
            
            locked1 = false
            lockedSelection1 = -1
        }
        
        //SHORT
        if(lockedSelection1 == 1 && locked1 == true){
            scoreDict["White"]!-=5
            scoreDict["Nude"]!-=10
            scoreDict["Pink Nude"]!-=10
            scoreDict["Sheer Pink"]!-=10
            
            scoreDict["Bubblegum Pink"]!-=10
            scoreDict["Classic Red"]!-=10
            scoreDict["Cherry Red"]!-=10
            scoreDict["Crimson Red"]!-=10
            scoreDict["Fire Engine Red"]!-=10
            scoreDict["Wine Red"]!-=10
            scoreDict["Ruby Red"]!-=10
            scoreDict["Maroon"]!-=10
            
            scoreDict["Lemon Yellow"]!-=5
            scoreDict["Golden Yellow"]!-=5
            
            scoreDict["Olive Green"]!-=5
            scoreDict["Navy Blue"]!-=5
            scoreDict["Denim Blue"]!-=5
            
            scoreDict["Periwinkle Purple"]!-=10
            scoreDict["Lilac"]!-=10
            scoreDict["Electric Blue"]!-=10
            
            locked1 = false
            lockedSelection1 = -1
        }
        
        //MEDIUM
        if(lockedSelection1 == 2 && locked1 == true){
            scoreDict["Brown"]!-=5
            scoreDict["Chocolate"]!-=5
            scoreDict["Hot Pink"]!-=10
            scoreDict["Sheer Pink"]!-=10
            
            scoreDict["Magenta"]!-=5
            scoreDict["Burgundy"]!-=5
            scoreDict["Orange Red"]!-=10
            
            scoreDict["Ginger Orange"]!-=10
            scoreDict["Burnt Orange"]!-=10
            scoreDict["Neon Yellow"]!-=10
            
            scoreDict["Mint Green"]!-=10
            scoreDict["Lime Green"]!-=5
            scoreDict["Seafoam Green"]!-=10
            scoreDict["Turquoise Blue"]!-=10
            scoreDict["Denim Blue"]!-=5
            
            scoreDict["Lavender"]!-=10
            scoreDict["Grape Purple"]!-=10
            scoreDict["Eggplant Purple"]!-=10
            scoreDict["Lilac"]!-=10
            scoreDict["Electric Blue"]!-=5
            
            locked1 = false
            lockedSelection1 = -1
        }
        
        //LONG
        if(lockedSelection1 == 3 && locked1 == true){
            
            scoreDict["Chocolate"]!-=5
            scoreDict["Light Pink"]!-=10
            
            
            scoreDict["Barbie Pink"]!-=10
            scoreDict["Fire Engine Red"]!-=10
            scoreDict["Wine Red"]!-=10
            scoreDict["Maroon"]!-=5
            
            scoreDict["Salmon"]!-=5
            scoreDict["Neon Orange"]!-=5
            scoreDict["Lemon Yellow"]!-=10
            
            scoreDict["Emerald Green"]!-=10
            scoreDict["Olive Green"]!-=10
            scoreDict["Forest Green"]!-=10
            scoreDict["Navy Blue"]!-=5
            scoreDict["Sky Blue"]!-=5
            scoreDict["Royal Blue"]!-=10
            
            scoreDict["Lavender"]!-=10
            scoreDict["Plum Purple"]!-=5
            scoreDict["Vibrant Purple"]!-=5
            scoreDict["Periwinkle Purple"]!-=10
            
            
            locked1 = false
            lockedSelection1 = -1
        }
        
        //EXTRA LONG
        if(lockedSelection1 == 4 && locked1 == true){
            
            scoreDict["Nude"]!-=5
            scoreDict["Pink Nude"]!-=5
            scoreDict["Sheer Pink"]!-=5
            scoreDict["Hot Pink"]!-=10
            scoreDict["Light Pink"]!-=5
            
            
            scoreDict["Barbie Pink"]!-=10
            scoreDict["Magenta"]!-=10
            scoreDict["Bubblegum Pink"]!-=10
            scoreDict["Cherry Red"]!-=5
            scoreDict["Wine Red"]!-=5
            scoreDict["Orange Red"]!-=10
            
            scoreDict["Coral"]!-=10
            
            scoreDict["Mint Green"]!-=10
            scoreDict["Lime Green"]!-=10
            scoreDict["Navy Blue"]!-=5
            scoreDict["Sky Blue"]!-=5
            scoreDict["Teal Blue"]!-=5
            
            scoreDict["Grape Purple"]!-=10
            scoreDict["Plum Purple"]!-=10
            scoreDict["Vibrant Purple"]!-=10
            scoreDict["Lilac"]!-=10
            
            locked1 = false
            lockedSelection1 = -1
        }
        
        //EXTRA SHORT
        if(selection == 0 && locked1 == false){
            scoreDict["White"]!+=10
            scoreDict["Nude"]!+=10
            scoreDict["Pink Nude"]!+=10
            scoreDict["Sheer Pink"]!+=5
            scoreDict["Light Pink"]!+=5
            
            scoreDict["Classic Red"]!+=10
            scoreDict["Cherry Red"]!+=5
            scoreDict["Fire Engine Red"]!+=10
            scoreDict["Wine Red"]!+=5
            scoreDict["Ruby Red"]!+=5
            
            scoreDict["Canary Yellow"]!+=5
            scoreDict["Pastel Yellow"]!+=10
            
            scoreDict["Emerald Green"]!+=10
            scoreDict["Forest Green"]!+=5
            scoreDict["Navy Blue"]!+=10
            scoreDict["Sky Blue"]!+=10
            scoreDict["Denim Blue"]!+=10
            
            locked1 = true
            lockedSelection1 = selection
        }
        
        //SHORT
        if(selection == 1 && locked1 == false){
            
            scoreDict["White"]!+=5
            scoreDict["Nude"]!+=10
            scoreDict["Pink Nude"]!+=10
            scoreDict["Sheer Pink"]!+=10
            
            scoreDict["Bubblegum Pink"]!+=10
            scoreDict["Classic Red"]!+=10
            scoreDict["Cherry Red"]!+=10
            scoreDict["Crimson Red"]!+=10
            scoreDict["Fire Engine Red"]!+=10
            scoreDict["Wine Red"]!+=10
            scoreDict["Ruby Red"]!+=10
            scoreDict["Maroon"]!+=10
            
            scoreDict["Lemon Yellow"]!+=5
            scoreDict["Golden Yellow"]!+=5
            
            scoreDict["Olive Green"]!+=5
            scoreDict["Navy Blue"]!+=5
            scoreDict["Denim Blue"]!+=5
            
            scoreDict["Plum Purple"]!+=5
            scoreDict["Eggplant Purple"]!+=5
            scoreDict["Lilac"]!+=5
            scoreDict["Electric Blue"]!+=10
            
            locked1 = true
            lockedSelection1 = selection
        }
        
        //MEDIUM
        if(selection == 2 && locked1 == false){
            
            scoreDict["Brown"]!+=5
            scoreDict["Chocolate"]!+=5
            scoreDict["Hot Pink"]!+=10
            scoreDict["Sheer Pink"]!+=10
            
            scoreDict["Magenta"]!+=5
            scoreDict["Burgundy"]!+=5
            scoreDict["Orange Red"]!+=10
            
            scoreDict["Ginger Orange"]!+=10
            scoreDict["Burnt Orange"]!+=10
            scoreDict["Neon Yellow"]!+=10
            
            scoreDict["Mint Green"]!+=10
            scoreDict["Lime Green"]!+=5
            scoreDict["Seafoam Green"]!+=10
            scoreDict["Turquoise Blue"]!+=10
            scoreDict["Denim Blue"]!+=5
            
            scoreDict["Lavender"]!+=10
            scoreDict["Grape Purple"]!+=10
            scoreDict["Eggplant Purple"]!+=10
            scoreDict["Lilac"]!+=10
            scoreDict["Electric Blue"]!+=5
            
            locked1 = true
            lockedSelection1 = selection
        }
        
        //LONG
        if(selection == 3 && locked1 == false){
            
            scoreDict["Chocolate"]!+=5
            scoreDict["Light Pink"]!+=10
            
            scoreDict["Barbie Pink"]!+=10
            scoreDict["Fire Engine Red"]!+=10
            scoreDict["Wine Red"]!+=10
            scoreDict["Maroon"]!+=5
            
            scoreDict["Salmon"]!+=5
            scoreDict["Neon Orange"]!+=5
            scoreDict["Lemon Yellow"]!+=10
            
            scoreDict["Emerald Green"]!+=10
            scoreDict["Olive Green"]!+=10
            scoreDict["Forest Green"]!+=10
            scoreDict["Navy Blue"]!+=5
            scoreDict["Sky Blue"]!+=5
            scoreDict["Royal Blue"]!+=10
            
            scoreDict["Lavender"]!+=10
            scoreDict["Plum Purple"]!+=5
            scoreDict["Vibrant Purple"]!+=5
            scoreDict["Periwinkle Purple"]!+=10
            
            locked1 = true
            lockedSelection1 = selection
        }
        
        //EXTRA LONG
        if(selection == 4 && locked1 == false){
            
            scoreDict["Nude"]!+=5
            scoreDict["Pink Nude"]!+=5
            scoreDict["Sheer Pink"]!+=5
            scoreDict["Hot Pink"]!+=10
            scoreDict["Light Pink"]!+=5
            
            scoreDict["Barbie Pink"]!+=10
            scoreDict["Magenta"]!+=10
            scoreDict["Bubblegum Pink"]!+=10
            scoreDict["Cherry Red"]!+=5
            scoreDict["Wine Red"]!+=5
            scoreDict["Orange Red"]!+=10
            
            scoreDict["Coral"]!+=10
            
            scoreDict["Mint Green"]!+=10
            scoreDict["Lime Green"]!+=10
            scoreDict["Navy Blue"]!+=5
            scoreDict["Sky Blue"]!+=5
            scoreDict["Teal Blue"]!+=5
            
            scoreDict["Grape Purple"]!+=10
            scoreDict["Plum Purple"]!+=10
            scoreDict["Vibrant Purple"]!+=10
            scoreDict["Lilac"]!+=10
            
            locked1 = true
            lockedSelection1 = selection
        }
        
    }
    
    
    //NAIL SHAPE
    func processSelection2(for selection: Int){
        
        
        //SQUARE
        if(lockedSelection2 == 0 && locked2 == true){
            
            locked2 = false
            lockedSelection2 = -1
        }
        
        //ALMOND
        if(lockedSelection2 == 1 && locked2 == true){
            
            locked2 = false
            lockedSelection2 = -1
        }
        
        //COFFIN
        if(lockedSelection2 == 2 && locked2 == true){
            
            locked2 = false
            lockedSelection2 = -1
        }
        
        //ROUND
        if(lockedSelection2 == 3 && locked2 == true){
            
            locked2 = false
            lockedSelection2 = -1
        }
        
        //OVAL
        if(lockedSelection2 == 4 && locked2 == true){
            
            locked2 = false
            lockedSelection2 = -1
        }
        
        //STILLETTO
        if(lockedSelection2 == 5 && locked2 == true){
            
            locked2 = false
            lockedSelection2 = -1
        }
        
        //NATURAL
        if(lockedSelection2 == 6 && locked2 == true){
            
            locked2 = false
            lockedSelection2 = -1
        }
        
        //SQUARE
        if(selection == 0 && locked2 == false){
            
            locked2 = true
            lockedSelection2 = selection
        }
        
        //ALMOND
        if(selection == 1 && locked2 == false){
            
            locked2 = true
            lockedSelection2 = selection
        }
        
        //COFFIN
        if(selection == 2 && locked2 == false){
            
            locked2 = true
            lockedSelection2 = selection
        }
        
        //ROUND
        if(selection == 3 && locked2 == false){
            
            locked2 = true
            lockedSelection2 = selection
        }
        
        //OVAL
        if(selection == 4 && locked2 == false){
            
            locked2 = true
            lockedSelection2 = selection
        }
        
        //STILLETTO
        if(selection == 5 && locked2 == false){
            
            locked2 = true
            lockedSelection2 = selection
        }
        
        //NATURAL
        if(selection == 6 && locked2 == false){
            
            locked2 = true
            lockedSelection2 = selection
        }
        
        
        
    }
        
        
        
        
    //HOW OFTEN DO YOU GET YOUR NAILS DONE
    func processSelection3(for selection: Int){
        
        //EVERY TWO WEEKS
        if(lockedSelection3 == 0 && locked3 == true){
            
            
            locked3 = false
            lockedSelection3 = -1
        }
        
        //ONCE A MONTH
        if(lockedSelection3 == 1 && locked3 == true){
            
            locked3 = false
            lockedSelection3 = -1
        }
        
        //A FEW TIMES A YEAR
        if(lockedSelection3 == 2 && locked3 == true){
            scoreDict["White"]!-=25
            scoreDict["Nude"]!-=25
            scoreDict["Brown"]!-=25
            scoreDict["Chocolate"]!-=25
            scoreDict["Pink Nude"]!-=25
            scoreDict["Sheer Pink"]!-=25
            scoreDict["Light Pink"]!-=25
            
            scoreDict["Classic Red"]!-=25
            scoreDict["Wine Red"]!-=25
            scoreDict["Ruby Red"]!-=25
            scoreDict["Burgundy"]!-=25
            
            scoreDict["Salmon"]!-=25
            scoreDict["Pastel Yellow"]!-=25
            scoreDict["Creamy Yellow/Nude"]!-=25
            
            scoreDict["Mint Green"]!-=25
            scoreDict["Forest Green"]!-=25
            scoreDict["Sky Blue"]!-=25
            
            scoreDict["Lavender"]!-=25
            scoreDict["Lilac"]!-=25
            
            
            locked3 = false
            lockedSelection3 = -1
        }
        
        //ALMOST NEVER
        if(lockedSelection3 == 3 && locked3 == true){
            scoreDict["White"]!-=25
            scoreDict["Nude"]!-=25
            scoreDict["Brown"]!-=25
            scoreDict["Chocolate"]!-=25
            scoreDict["Pink Nude"]!-=25
            scoreDict["Sheer Pink"]!-=25
            scoreDict["Light Pink"]!-=25
            
            scoreDict["Classic Red"]!-=25
            scoreDict["Wine Red"]!-=25
            scoreDict["Ruby Red"]!-=25
            scoreDict["Burgundy"]!-=25
            
            scoreDict["Salmon"]!-=25
            scoreDict["Pastel Yellow"]!-=25
            scoreDict["Creamy Yellow/Nude"]!-=25
            
            scoreDict["Mint Green"]!-=25
            scoreDict["Forest Green"]!-=25
            scoreDict["Sky Blue"]!-=25
            
            scoreDict["Lavender"]!-=25
            scoreDict["Lilac"]!-=25
            
            
            locked3 = false
            lockedSelection3 = -1
        }
        
        //EVERY TWO WEEKS
        if(selection == 0 && locked3 == false){
            
            
            locked3 = true
            lockedSelection3 = selection
        }
        
        //ONCE A MONTH
        if(selection == 1 && locked3 == false){
            
            locked3 = true
            lockedSelection3 = selection
        }
        
        //A FEW TIMES A YEAR
        if(selection == 2 && locked3 == false){
            scoreDict["White"]!+=25
            scoreDict["Nude"]!+=25
            scoreDict["Brown"]!+=25
            scoreDict["Chocolate"]!+=25
            scoreDict["Pink Nude"]!+=25
            scoreDict["Sheer Pink"]!+=25
            scoreDict["Light Pink"]!+=25
            
            scoreDict["Classic Red"]!+=25
            scoreDict["Wine Red"]!+=25
            scoreDict["Ruby Red"]!+=25
            scoreDict["Burgundy"]!+=25
            
            scoreDict["Salmon"]!+=25
            scoreDict["Pastel Yellow"]!+=25
            scoreDict["Creamy Yellow/Nude"]!+=25
            
            scoreDict["Mint Green"]!+=25
            scoreDict["Forest Green"]!+=25
            scoreDict["Sky Blue"]!+=25
            
            scoreDict["Lavender"]!+=25
            scoreDict["Lilac"]!+=25
            
            locked3 = true
            lockedSelection3 = selection
        }
        
        //ALMOST NEVER
        if(selection == 3 && locked3 == false){
            scoreDict["White"]!+=25
            scoreDict["Nude"]!+=25
            scoreDict["Brown"]!+=25
            scoreDict["Chocolate"]!+=25
            scoreDict["Pink Nude"]!+=25
            scoreDict["Sheer Pink"]!+=25
            scoreDict["Light Pink"]!+=25
            
            scoreDict["Classic Red"]!+=25
            scoreDict["Wine Red"]!+=25
            scoreDict["Ruby Red"]!+=25
            scoreDict["Burgundy"]!+=25
            
            scoreDict["Salmon"]!+=25
            scoreDict["Pastel Yellow"]!+=25
            scoreDict["Creamy Yellow/Nude"]!+=25
            
            scoreDict["Mint Green"]!+=25
            scoreDict["Forest Green"]!+=25
            scoreDict["Sky Blue"]!+=25
            
            scoreDict["Lavender"]!+=25
            scoreDict["Lilac"]!+=25
            
            locked3 = true
            lockedSelection3 = selection
        }
    }
        
    
    
    
    
    
    
    //WHAT IS THE REASON FOR YOU TO GET YOUR NAILS DONE
    func processSelection4(for selection: Int){
        
        //YOURE GOING ON VACATION
        if(lockedSelection4 == 0 && locked4 == true){
            scoreDict["White"]!-=35
            scoreDict["Pink Nude"]!-=35
            scoreDict["Hot Pink"]!-=35
            scoreDict["Neon Pink"]!-=35
            
            scoreDict["Bubblegum Pink"]!-=35
            scoreDict["Orange Red"]!-=35
            
            scoreDict["Salmon"]!-=35
            scoreDict["Ginger Orange"]!-=35
            scoreDict["Burnt Orange"]!-=35
            scoreDict["Lemon Yellow"]!-=35
            scoreDict["Canary Yellow"]!-=35
            scoreDict["Pastel Yellow"]!-=35
            scoreDict["Neon Yellow"]!-=35
            
            scoreDict["Lime Green"]!-=35
            scoreDict["Seafoam Green"]!-=35
            scoreDict["Sky Blue"]!-=35
            scoreDict["Royal Blue"]!-=35
            scoreDict["Turquoise Blue"]!-=35
            scoreDict["Teal Blue"]!-=35
            
            scoreDict["Vibrant Purple"]!-=35
            scoreDict["Electric Blue"]!-=35
            
            locked4 = false
            lockedSelection4 = -1
        }
        
        //YOU HAVE A FORMAL EVENT
        if(lockedSelection4 == 1 && locked4 == true){
            scoreDict["Nude"]!-=70
            scoreDict["Brown"]!-=50
            scoreDict["Chocolate"]!-=50
            scoreDict["Pink Nude"]!-=70
            scoreDict["Sheer Pink"]!-=70
            scoreDict["Light Pink"]!-=50
            
            scoreDict["Mauve"]!-=35
            scoreDict["Classic Red"]!-=35
            
            scoreDict["Salmon"]!-=35
            scoreDict["Pastel Yellow"]!-=35
            scoreDict["Creamy Yellow/Nude"]!-=35
            
            scoreDict["Forest Green"]!-=35
            scoreDict["Sky Blue"]!-=35
            
            scoreDict["Lavender"]!-=50
            scoreDict["Lilac"]!-=35
            
            locked4 = false
            lockedSelection4 = -1
        }
        
        //TO EXPRESS CREATIVITY
        if(lockedSelection4 == 2 && locked4 == true){
            scoreDict["Hot Pink"]!-=35
            
            scoreDict["Fire Engine Red"]!-=35
            scoreDict["Orange Red"]!-=35
            
            scoreDict["Coral"]!-=35
            scoreDict["Ginger Orange"]!-=35
            scoreDict["Burnt Orange"]!-=35
            scoreDict["Lemon Yellow"]!-=35
            scoreDict["Canary Yellow"]!-=35
            scoreDict["Pastel Yellow"]!-=35
            
            scoreDict["Mint Green"]!-=35
            scoreDict["Olive Green"]!-=35
            scoreDict["Seafoam Green"]!-=35
            scoreDict["Royal Blue"]!-=35
            scoreDict["Turquoise Blue"]!-=35
            scoreDict["Teal Blue"]!-=35
            scoreDict["Denim Blue"]!-=35
            
            scoreDict["Grape Purple"]!-=35
            scoreDict["Plum Purple"]!-=35
            scoreDict["Vibrant Purple"]!-=35
            scoreDict["Periwinkle Purple"]!-=35
            scoreDict["Electric Blue"]!-=35
            
            locked4 = false
            lockedSelection4 = -1
        }
        
        //SELF CARE
        if(lockedSelection4 == 3 && locked4 == true){
            
            locked4 = false
            lockedSelection4 = -1
        }
        
        //JUST FOR FUN
        if(lockedSelection4 == 4 && locked4 == true){
            
            locked4 = false
            lockedSelection4 = -1
        }
        
        //YOURE GOING ON VACATION
        if(selection == 0 && locked4 == false){
            scoreDict["White"]!+=35
            scoreDict["Pink Nude"]!+=35
            scoreDict["Hot Pink"]!+=35
            scoreDict["Neon Pink"]!+=35
            
            scoreDict["Bubblegum Pink"]!+=35
            scoreDict["Orange Red"]!+=35
            
            scoreDict["Salmon"]!+=35
            scoreDict["Ginger Orange"]!+=35
            scoreDict["Burnt Orange"]!+=35
            scoreDict["Lemon Yellow"]!+=35
            scoreDict["Canary Yellow"]!+=35
            scoreDict["Pastel Yellow"]!+=35
            scoreDict["Neon Yellow"]!+=35
            
            scoreDict["Lime Green"]!+=35
            scoreDict["Seafoam Green"]!+=35
            scoreDict["Sky Blue"]!+=35
            scoreDict["Royal Blue"]!+=35
            scoreDict["Turquoise Blue"]!+=35
            scoreDict["Teal Blue"]!+=35
            
            scoreDict["Vibrant Purple"]!+=35
            scoreDict["Electric Blue"]!+=35
            
            locked4 = true
            lockedSelection4 = selection
        }
        
        //YOU HAVE A FORMAL EVENT
        if(selection == 1 && locked4 == false){
            
            scoreDict["Nude"]!+=70
            scoreDict["Brown"]!+=50
            scoreDict["Chocolate"]!+=50
            scoreDict["Pink Nude"]!+=70
            scoreDict["Sheer Pink"]!+=70
            scoreDict["Light Pink"]!+=50
            
            scoreDict["Mauve"]!+=35
            scoreDict["Classic Red"]!+=35
            
            scoreDict["Salmon"]!+=35
            scoreDict["Pastel Yellow"]!+=35
            scoreDict["Creamy Yellow/Nude"]!+=35
            
            scoreDict["Forest Green"]!+=35
            scoreDict["Sky Blue"]!+=35
            
            scoreDict["Lavender"]!+=50
            scoreDict["Lilac"]!+=35
            
            locked4 = true
            lockedSelection4 = selection
        }
        
        //TO EXPRESS CREATIVITY
        if(selection == 2 && locked4 == false){
            scoreDict["Hot Pink"]!+=35
            
            scoreDict["Fire Engine Red"]!+=35
            scoreDict["Orange Red"]!+=35
            
            scoreDict["Coral"]!+=35
            scoreDict["Ginger Orange"]!+=35
            scoreDict["Burnt Orange"]!+=35
            scoreDict["Lemon Yellow"]!+=35
            scoreDict["Canary Yellow"]!+=35
            scoreDict["Pastel Yellow"]!+=35
            
            scoreDict["Mint Green"]!+=35
            scoreDict["Olive Green"]!+=35
            scoreDict["Seafoam Green"]!+=35
            scoreDict["Royal Blue"]!+=35
            scoreDict["Turquoise Blue"]!+=35
            scoreDict["Teal Blue"]!+=35
            scoreDict["Denim Blue"]!+=35
            
            scoreDict["Grape Purple"]!+=35
            scoreDict["Plum Purple"]!+=35
            scoreDict["Vibrant Purple"]!+=35
            scoreDict["Periwinkle Purple"]!+=35
            scoreDict["Electric Blue"]!+=35
            
            locked4 = true
            lockedSelection4 = selection
        }
        
        //SELF CARE
        if(selection == 3 && locked4 == false){
            
            locked4 = true
            lockedSelection4 = selection
        }
        
        //JUST FOR FUN
        if(selection == 4 && locked4 == false){
            
            locked4 = true
            lockedSelection4 = selection
        }
    }
    
    //WHICH ADJECTIVE DESCRIBES YOU THE BEST
    func processSelection5(for selection: Int){
        
        //ENERGETIC
        if(lockedSelection5 == 0 && locked5 == true){
            scoreDict["Hot Pink"]!-=25
            scoreDict["Neon Pink"]!-=25
            
            scoreDict["Barbie Pink"]!-=25
            scoreDict["Magenta"]!-=25
            scoreDict["Bubblegum Pink"]!-=25
            scoreDict["Fire Engine Red"]!-=25
            scoreDict["Orange Red"]!-=25
            
            scoreDict["Coral"]!-=25
            scoreDict["Neon Orange"]!-=25
            scoreDict["Neon Yellow"]!-=25
            scoreDict["Golden Yellow"]!-=25
            
            scoreDict["Emerald Green"]!-=25
            scoreDict["Lime Green"]!-=25
            scoreDict["Seafoam Green"]!-=25
            scoreDict["Sky Blue"]!-=25
            scoreDict["Turquoise Blue"]!-=25
            
            scoreDict["Grape Purple"]!-=25
            scoreDict["Plum Purple"]!-=25
            scoreDict["Vibrant Purple"]!-=25
            scoreDict["Electric Blue"]!-=25
            
            locked5 = false
            lockedSelection5 = -1
        }
        
        //THOUGHTFUL
        if(lockedSelection5 == 1 && locked5 == true){
            scoreDict["White"]!-=25
            scoreDict["Nude"]!-=25
            scoreDict["Brown"]!-=25
            scoreDict["Chocolate"]!-=25
            scoreDict["Pink Nude"]!-=25
            scoreDict["Sheer Pink"]!-=25
            scoreDict["Light Pink"]!-=25
            
            scoreDict["Magenta"]!-=25
            scoreDict["Crimson Red"]!-=25
            scoreDict["Wine Red"]!-=25
            scoreDict["Maroon"]!-=25
            
            scoreDict["Canary Yellow"]!-=25
            scoreDict["Pastel Yellow"]!-=25
            scoreDict["Creamy Yellow/Nude"]!-=25
            
            scoreDict["Mint Green"]!-=25
            scoreDict["Forest Green"]!-=25
            scoreDict["Royal Blue"]!-=25
            scoreDict["Denim Blue"]!-=25
            
            scoreDict["Lavender"]!-=25
            scoreDict["Eggplant Purple"]!-=25
            
            locked5 = false
            lockedSelection5 = -1
        }
        
        //CREATIVE
        if(lockedSelection5 == 2 && locked5 == true){
            scoreDict["Hot Pink"]!-=25
            
            scoreDict["Fire Engine Red"]!-=25
            scoreDict["Orange Red"]!-=25
            
            scoreDict["Coral"]!-=25
            scoreDict["Ginger Orange"]!-=25
            scoreDict["Burnt Orange"]!-=25
            scoreDict["Canary Yellow"]!-=25
            scoreDict["Pastel Yellow"]!-=25
            
            scoreDict["Mint Green"]!-=25
            scoreDict["Olive Green"]!-=25
            scoreDict["Seafoam Green"]!-=25
            scoreDict["Royal Blue"]!-=25
            scoreDict["Turquoise Blue"]!-=25
            scoreDict["Teal Blue"]!-=25
            scoreDict["Denim Blue"]!-=25
            
            scoreDict["Grape Purple"]!-=25
            scoreDict["Plum Purple"]!-=25
            scoreDict["Vibrant Purple"]!-=25
            scoreDict["Periwinkle Purple"]!-=25
            scoreDict["Electric Blue"]!-=25
            
            
            locked5 = false
            lockedSelection5 = -1
        }
        
        //CONFIDENT
        if(lockedSelection5 == 3 && locked5 == true){
            scoreDict["Hot Pink"]!-=25
            
            scoreDict["Barbie Pink"]!-=25
            scoreDict["Magenta"]!-=25
            scoreDict["Bubblegum Pink"]!-=25
            scoreDict["Classic Red"]!-=25
            scoreDict["Cherry Red"]!-=25
            scoreDict["Crimson Red"]!-=25
            scoreDict["Fire Engine Red"]!-=25
            scoreDict["Wine Red"]!-=25
            scoreDict["Ruby Red"]!-=25
            scoreDict["Maroon"]!-=25
            scoreDict["Burgundy"]!-=25
            scoreDict["Orange Red"]!-=25
            
            scoreDict["Canary Yellow"]!-=25
            
            scoreDict["Emerald Green"]!-=25
            scoreDict["Forest Green"]!-=25
            scoreDict["Navy Blue"]!-=25
            
            scoreDict["Grape Purple"]!-=25
            scoreDict["Eggplant Purple"]!-=25
            scoreDict["Black"]!-=25
            
            locked5 = false
            lockedSelection5 = -1
        }
        
        //EASYGOING
        if(lockedSelection5 == 4 && locked5 == true){
            scoreDict["White"]!-=25
            scoreDict["Brown"]!-=25
            scoreDict["Chocolate"]!-=25
            scoreDict["Sheer Pink"]!-=25
            scoreDict["Light Pink"]!-=25
            
            scoreDict["Coral"]!-=25
            scoreDict["Salmon"]!-=25
            scoreDict["Canary Yellow"]!-=25
            scoreDict["Pastel Yellow"]!-=25
            scoreDict["Creamy Yellow/Nude"]!-=25
            
            
            scoreDict["Emerald Green"]!-=25
            scoreDict["Mint Green"]!-=25
            scoreDict["Olive Green"]!-=25
            scoreDict["Seafoam Green"]!-=25
            scoreDict["Sky Blue"]!-=25
            scoreDict["Turquoise Blue"]!-=25
            scoreDict["Denim Blue"]!-=25
            
            scoreDict["Lavender"]!-=25
            scoreDict["Periwinkle Purple"]!-=25
            scoreDict["Lilac"]!-=25
            
            
            locked5 = false
            lockedSelection5 = -1
        }
        
        //ENERGETIC
        if(selection == 0 && locked5 == false){
            scoreDict["Hot Pink"]!+=25
            scoreDict["Neon Pink"]!+=25
            
            scoreDict["Barbie Pink"]!+=25
            scoreDict["Magenta"]!+=25
            scoreDict["Bubblegum Pink"]!+=25
            scoreDict["Fire Engine Red"]!+=25
            scoreDict["Orange Red"]!+=25
            
            scoreDict["Coral"]!+=25
            scoreDict["Neon Orange"]!+=25
            scoreDict["Neon Yellow"]!+=25
            scoreDict["Golden Yellow"]!+=25
            
            scoreDict["Emerald Green"]!+=25
            scoreDict["Lime Green"]!+=25
            scoreDict["Seafoam Green"]!+=25
            scoreDict["Sky Blue"]!+=25
            scoreDict["Turquoise Blue"]!+=25
            
            scoreDict["Grape Purple"]!+=25
            scoreDict["Plum Purple"]!+=25
            scoreDict["Vibrant Purple"]!+=25
            scoreDict["Electric Blue"]!+=25
            
            locked5 = true
            lockedSelection5 = selection
        }
        
        //THOUGHTFUL
        if(selection == 1 && locked5 == false){
            scoreDict["White"]!+=25
            scoreDict["Nude"]!+=25
            scoreDict["Brown"]!+=25
            scoreDict["Chocolate"]!+=25
            scoreDict["Pink Nude"]!+=25
            scoreDict["Sheer Pink"]!+=25
            scoreDict["Light Pink"]!+=25
            
            scoreDict["Magenta"]!+=25
            scoreDict["Crimson Red"]!+=25
            scoreDict["Wine Red"]!+=25
            scoreDict["Maroon"]!+=25
            
            scoreDict["Canary Yellow"]!+=25
            scoreDict["Pastel Yellow"]!+=25
            scoreDict["Creamy Yellow/Nude"]!+=25
            
            scoreDict["Mint Green"]!+=25
            scoreDict["Forest Green"]!+=25
            scoreDict["Royal Blue"]!+=25
            scoreDict["Denim Blue"]!+=25
            
            scoreDict["Lavender"]!+=25
            scoreDict["Eggplant Purple"]!+=25
            
            locked5 = true
            lockedSelection5 = selection
        }
        
        //CREATIVE
        if(selection == 2 && locked5 == false){
            scoreDict["Hot Pink"]!+=25
            
            scoreDict["Fire Engine Red"]!+=25
            scoreDict["Orange Red"]!+=25
            
            scoreDict["Coral"]!+=25
            scoreDict["Ginger Orange"]!+=25
            scoreDict["Burnt Orange"]!+=25
            scoreDict["Canary Yellow"]!+=25
            scoreDict["Pastel Yellow"]!+=25
            
            scoreDict["Mint Green"]!+=25
            scoreDict["Olive Green"]!+=25
            scoreDict["Seafoam Green"]!+=25
            scoreDict["Royal Blue"]!+=25
            scoreDict["Turquoise Blue"]!+=25
            scoreDict["Teal Blue"]!+=25
            scoreDict["Denim Blue"]!+=25
            
            scoreDict["Grape Purple"]!+=25
            scoreDict["Plum Purple"]!+=25
            scoreDict["Vibrant Purple"]!+=25
            scoreDict["Periwinkle Purple"]!+=25
            scoreDict["Electric Blue"]!+=25
            
            locked5 = true
            lockedSelection5 = selection
        }
        
        //CONFIDENT
        if(selection == 3 && locked5 == false){
            scoreDict["Hot Pink"]!+=25
            
            scoreDict["Barbie Pink"]!+=25
            scoreDict["Magenta"]!+=25
            scoreDict["Bubblegum Pink"]!+=25
            scoreDict["Classic Red"]!+=25
            scoreDict["Cherry Red"]!+=25
            scoreDict["Crimson Red"]!+=25
            scoreDict["Fire Engine Red"]!+=25
            scoreDict["Wine Red"]!+=25
            scoreDict["Ruby Red"]!+=25
            scoreDict["Maroon"]!+=25
            scoreDict["Burgundy"]!+=25
            scoreDict["Orange Red"]!+=25
            
            scoreDict["Canary Yellow"]!+=25
            
            scoreDict["Emerald Green"]!+=25
            scoreDict["Forest Green"]!+=25
            scoreDict["Navy Blue"]!+=25
            
            scoreDict["Grape Purple"]!+=25
            scoreDict["Eggplant Purple"]!+=25
            scoreDict["Black"]!+=25
            
            locked5 = true
            lockedSelection5 = selection
        }
        
        //EASYGOING
        if(selection == 4 && locked5 == false){
            scoreDict["White"]!+=25
            scoreDict["Brown"]!+=25
            scoreDict["Chocolate"]!+=25
            scoreDict["Sheer Pink"]!+=25
            scoreDict["Light Pink"]!+=25
            
            scoreDict["Coral"]!+=25
            scoreDict["Salmon"]!+=25
            scoreDict["Canary Yellow"]!+=25
            scoreDict["Pastel Yellow"]!+=25
            scoreDict["Creamy Yellow/Nude"]!+=25
            
            scoreDict["Emerald Green"]!+=25
            scoreDict["Mint Green"]!+=25
            scoreDict["Olive Green"]!+=25
            scoreDict["Seafoam Green"]!+=25
            scoreDict["Sky Blue"]!+=25
            scoreDict["Turquoise Blue"]!+=25
            scoreDict["Denim Blue"]!+=25
            
            scoreDict["Lavender"]!+=25
            scoreDict["Periwinkle Purple"]!+=25
            scoreDict["Lilac"]!+=25
            
            locked5 = true
            lockedSelection5 = selection
        }
    }
    
    
    
    
    
    
    //WHAT IS YOUR ASTROLOGICAL SIGN
    func processSelection6(for selection: Int){
        
        //ARIES LEO SAG FIRE
        if(lockedSelection6 == 0 && locked6 == true){
            scoreDict["Brown"]!-=25
            scoreDict["Chocolate"]!-=25
            
            scoreDict["Classic Red"]!-=25
            scoreDict["Cherry Red"]!-=25
            scoreDict["Crimson Red"]!-=25
            scoreDict["Fire Engine Red"]!-=25
            scoreDict["Wine Red"]!-=25
            scoreDict["Ruby Red"]!-=25
            scoreDict["Maroon"]!-=25
            scoreDict["Burgundy"]!-=25
            scoreDict["Orange Red"]!-=25
            
            scoreDict["Coral"]!-=25
            scoreDict["Salmon"]!-=25
            scoreDict["Ginger Orange"]!-=25
            scoreDict["Burnt Orange"]!-=25
            scoreDict["Lemon Yellow"]!-=25
            scoreDict["Canary Yellow"]!-=25
            scoreDict["Pastel Yellow"]!-=25
            scoreDict["Golden Yellow"]!-=25
            scoreDict["Creamy Yellow/Nude"]!-=25
            
            locked6 = false
            lockedSelection6 = -1
        }
        
        //TAURUS VIRGO CAPRI EARTH
        if(lockedSelection6 == 1 && locked6 == true){
            scoreDict["Brown"]!-=25
            scoreDict["Chocolate"]!-=25
            scoreDict["Sheer Pink"]!-=25
            
            scoreDict["Golden Yellow"]!-=25
            scoreDict["Creamy Yellow/Nude"]!-=25
            
            scoreDict["Emerald Green"]!-=25
            scoreDict["Mint Green"]!-=25
            scoreDict["Olive Green"]!-=25
            scoreDict["Lime Green"]!-=25
            scoreDict["Forest Green"]!-=25
            scoreDict["Seafoam Green"]!-=25
            scoreDict["Navy Blue"]!-=25
            scoreDict["Sky Blue"]!-=25
            scoreDict["Royal Blue"]!-=25
            scoreDict["Turquoise Blue"]!-=25
            scoreDict["Teal Blue"]!-=25
            scoreDict["Denim Blue"]!-=25
            
            scoreDict["Lavender"]!-=25
            scoreDict["Lilac"]!-=25
            scoreDict["Gray"]!-=25
            scoreDict["Electric Blue"]!-=25
            
            locked6 = false
            lockedSelection6 = -1
        }
        
        //GEMINI LIBRA AQUARIUS AIR
        if(lockedSelection6 == 2 && locked6 == true){
            scoreDict["White"]!-=50
            scoreDict["Brown"]!-=50
            scoreDict["Chocolate"]!-=50
            scoreDict["Pink Nude"]!-=50
            scoreDict["Sheer Pink"]!-=50
            
            scoreDict["Bubblegum Pink"]!-=50
            
            scoreDict["Sky Blue"]!-=50
            scoreDict["Teal Blue"]!-=50
            scoreDict["Denim Blue"]!-=50
            
            scoreDict["Gray"]!-=50
            
            
            locked6 = false
            lockedSelection6 = -1
        }
        
        //CANCER SCORPIO PISCES WATER
        if(lockedSelection6 == 3 && locked6 == true){
            scoreDict["White"]!-=50
            
            scoreDict["Mauve"]!-=50
            
            scoreDict["Coral"]!-=50
            scoreDict["Salmon"]!-=50
            
            scoreDict["Navy Blue"]!-=50
            scoreDict["Sky Blue"]!-=50
            scoreDict["Royal Blue"]!-=50
            scoreDict["Turquoise Blue"]!-=50
            scoreDict["Teal Blue"]!-=50
            scoreDict["Denim Blue"]!-=50
            
            scoreDict["Electric Blue"]!-=50
            
            
            locked6 = false
            lockedSelection6 = -1
        }
        
        //ARIES LEO SAG FIRE
        if(selection == 0 && locked6 == false){
            scoreDict["Brown"]!+=25
            scoreDict["Chocolate"]!+=25
            
            scoreDict["Classic Red"]!+=25
            scoreDict["Cherry Red"]!+=25
            scoreDict["Crimson Red"]!+=25
            scoreDict["Fire Engine Red"]!+=25
            scoreDict["Wine Red"]!+=25
            scoreDict["Ruby Red"]!+=25
            scoreDict["Maroon"]!+=25
            scoreDict["Burgundy"]!+=25
            scoreDict["Orange Red"]!+=25
            
            scoreDict["Coral"]!+=25
            scoreDict["Salmon"]!+=25
            scoreDict["Ginger Orange"]!+=25
            scoreDict["Burnt Orange"]!+=25
            scoreDict["Lemon Yellow"]!+=25
            scoreDict["Canary Yellow"]!+=25
            scoreDict["Pastel Yellow"]!+=25
            scoreDict["Golden Yellow"]!+=25
            scoreDict["Creamy Yellow/Nude"]!+=25
            
            locked6 = true
            lockedSelection6 = selection
        }
        
        //TAURUS VIRGO CAPRI EARTH
        if(selection == 1 && locked6 == false){
            scoreDict["Brown"]!+=25
            scoreDict["Chocolate"]!+=25
            scoreDict["Sheer Pink"]!+=25
            
            scoreDict["Golden Yellow"]!+=25
            scoreDict["Creamy Yellow/Nude"]!+=25
            
            scoreDict["Emerald Green"]!+=25
            scoreDict["Mint Green"]!+=25
            scoreDict["Olive Green"]!+=25
            scoreDict["Lime Green"]!+=25
            scoreDict["Forest Green"]!+=25
            scoreDict["Seafoam Green"]!+=25
            scoreDict["Navy Blue"]!+=25
            scoreDict["Sky Blue"]!+=25
            scoreDict["Royal Blue"]!+=25
            scoreDict["Turquoise Blue"]!+=25
            scoreDict["Teal Blue"]!+=25
            scoreDict["Denim Blue"]!+=25
            
            scoreDict["Lavender"]!+=25
            scoreDict["Lilac"]!+=25
            scoreDict["Gray"]!+=25
            scoreDict["Electric Blue"]!+=25
            
            locked6 = true
            lockedSelection6 = selection
        }
        
        //GEMINI LIBRA AQURI AIR
        if(selection == 2 && locked6 == false){
            scoreDict["White"]!+=50
            scoreDict["Brown"]!+=50
            scoreDict["Chocolate"]!+=50
            scoreDict["Pink Nude"]!+=50
            scoreDict["Sheer Pink"]!+=50
            
            scoreDict["Bubblegum Pink"]!+=50
            
            scoreDict["Sky Blue"]!+=50
            scoreDict["Teal Blue"]!+=50
            scoreDict["Denim Blue"]!+=50
            
            scoreDict["Gray"]!+=50
            
            locked6 = true
            lockedSelection6 = selection
        }
        
        //CANCER SCORPIO PISCES Water
        if(selection == 3 && locked6 == false){
            scoreDict["White"]!+=50
            
            scoreDict["Mauve"]!+=50
            
            scoreDict["Coral"]!+=50
            scoreDict["Salmon"]!+=50
            
            scoreDict["Navy Blue"]!+=50
            scoreDict["Sky Blue"]!+=50
            scoreDict["Royal Blue"]!+=50
            scoreDict["Turquoise Blue"]!+=50
            scoreDict["Teal Blue"]!+=50
            scoreDict["Denim Blue"]!+=50
            
            scoreDict["Electric Blue"]!+=50
            
            locked6 = true
            lockedSelection6 = selection
        }
    }
    
    
    
    
    
    
    //WHAT HAS YOUR MOOD BEEN THE PAST WEEK
    func processSelection7(for selection: Int){
        
        //CONTENT
        if(lockedSelection7 == 0 && locked7 == true){
            
            
            locked7 = false
            lockedSelection7 = -1
        }
        
        //OVERWHELMED
        if(lockedSelection7 == 1 && locked7 == true){
            scoreDict["Nude"]!-=50
            scoreDict["Pink Nude"]!-=50
            scoreDict["Sheer Pink"]!-=50
            scoreDict["Light Pink"]!-=50
            
            scoreDict["Pastel Yellow"]!-=50
            scoreDict["Creamy Yellow/Nude"]!-=50
            
            scoreDict["Olive Green"]!-=50
            scoreDict["Forest Green"]!-=50
            
            scoreDict["Lavender"]!-=50
            scoreDict["Lilac"]!-=50
            
            locked7 = false
            lockedSelection7 = -1
        }
        
        //BORED
        if(lockedSelection7 == 2 && locked7 == true){
            scoreDict["Hot Pink"]!-=50
            
            scoreDict["Barbie Pink"]!-=50
            scoreDict["Orange Red"]!-=50
            
            scoreDict["Ginger Orange"]!-=50
            scoreDict["Neon Orange"]!-=50
            scoreDict["Lemon Yellow"]!-=50
            
            scoreDict["Lime Green"]!-=50
            scoreDict["Turquoise Blue"]!-=50
            
            scoreDict["Grape Purple"]!-=50
            scoreDict["Vibrant Purple"]!-=50
            
            locked7 = false
            lockedSelection7 = -1
        }
        
        //EXCITED
        if(lockedSelection7 == 3 && locked7 == true){
            scoreDict["Fire Engine Red"]!-=50
            scoreDict["Ruby Red"]!-=50
            scoreDict["Orange Red"]!-=50
            
            scoreDict["Salmon"]!-=50
            scoreDict["Burnt Orange"]!-=50
            scoreDict["Golden Yellow"]!-=50
            
            scoreDict["Emerald Green"]!-=50
            scoreDict["Seafoam Green"]!-=50
            scoreDict["Royal Blue"]!-=50
            
            scoreDict["Plum Purple"]!-=50
            
            locked7 = false
            lockedSelection7 = -1
        }
        
        //OPTIMISTIC
        if(lockedSelection7 == 4 && locked7 == true){
            scoreDict["Fire Engine Red"]!-=50
            scoreDict["Ruby Red"]!-=50
            scoreDict["Orange Red"]!-=50
            
            scoreDict["Salmon"]!-=50
            scoreDict["Burnt Orange"]!-=50
            scoreDict["Golden Yellow"]!-=50
            
            scoreDict["Emerald Green"]!-=50
            scoreDict["Seafoam Green"]!-=50
            scoreDict["Royal Blue"]!-=50
            
            scoreDict["Plum Purple"]!-=50
            
            locked7 = false
            lockedSelection7 = -1
        }
        
        //TIRED
        if(lockedSelection7 == 5 && locked7 == true){
            scoreDict["Sheer Pink"]!-=50
            
            scoreDict["Wine Red"]!-=50
            scoreDict["Burgundy"]!-=50
            
            scoreDict["Coral"]!-=50
            scoreDict["Canary Yellow"]!-=50
            scoreDict["Pastel Yellow"]!-=50
            
            scoreDict["Mint Green"]!-=50
            scoreDict["Navy Blue"]!-=50
            
            scoreDict["Lavender"]!-=50
            scoreDict["Lilac"]!-=50
            
            locked7 = false
            lockedSelection7 = -1
        }
        
        
        //CONTENT
        if(selection == 0 && locked7 == false){
            
            
            locked7 = true
            lockedSelection7 = selection
        }
        
        //OVERWHELMED
        if(selection == 1 && locked7 == false){
            scoreDict["Nude"]!+=50
            scoreDict["Pink Nude"]!+=50
            scoreDict["Sheer Pink"]!+=50
            scoreDict["Light Pink"]!+=50
            
            scoreDict["Pastel Yellow"]!+=50
            scoreDict["Creamy Yellow/Nude"]!+=50
            
            scoreDict["Olive Green"]!+=50
            scoreDict["Forest Green"]!+=50
            
            scoreDict["Lavender"]!+=50
            scoreDict["Lilac"]!+=50
            
            locked7 = true
            lockedSelection7 = selection
        }
        
        //BORED
        if(selection == 2 && locked7 == false){
            scoreDict["Hot Pink"]!+=50
            
            scoreDict["Barbie Pink"]!+=50
            scoreDict["Orange Red"]!+=50
            
            scoreDict["Ginger Orange"]!+=50
            scoreDict["Neon Orange"]!+=50
            scoreDict["Lemon Yellow"]!+=50
            
            scoreDict["Lime Green"]!+=50
            scoreDict["Turquoise Blue"]!+=50
            
            scoreDict["Grape Purple"]!+=50
            scoreDict["Vibrant Purple"]!+=50
            
            locked7 = true
            lockedSelection7 = selection
        }
        
        //EXCITED
        if(selection == 3 && locked7 == false){
            scoreDict["Fire Engine Red"]!+=50
            scoreDict["Ruby Red"]!+=50
            scoreDict["Orange Red"]!+=50
            
            scoreDict["Salmon"]!+=50
            scoreDict["Burnt Orange"]!+=50
            scoreDict["Golden Yellow"]!+=50
            
            scoreDict["Emerald Green"]!+=50
            scoreDict["Seafoam Green"]!+=50
            scoreDict["Royal Blue"]!+=50
            
            scoreDict["Plum Purple"]!+=50
            
            locked7 = true
            lockedSelection7 = selection
        }
        
        //OPTIMISTIC
        if(selection == 4 && locked7 == false){
            scoreDict["Fire Engine Red"]!+=50
            scoreDict["Ruby Red"]!+=50
            scoreDict["Orange Red"]!+=50
            
            scoreDict["Salmon"]!+=50
            scoreDict["Burnt Orange"]!+=50
            scoreDict["Golden Yellow"]!+=50
            
            scoreDict["Emerald Green"]!+=50
            scoreDict["Seafoam Green"]!+=50
            scoreDict["Royal Blue"]!+=50
            
            scoreDict["Plum Purple"]!+=50
            
            locked7 = true
            lockedSelection7 = selection
        }
        
        //TIRED
        if(selection == 5 && locked7 == false){
            scoreDict["Sheer Pink"]!+=50
            
            scoreDict["Wine Red"]!+=50
            scoreDict["Burgundy"]!+=50
            
            scoreDict["Coral"]!+=50
            scoreDict["Canary Yellow"]!+=50
            scoreDict["Pastel Yellow"]!+=50
            
            scoreDict["Mint Green"]!+=50
            scoreDict["Navy Blue"]!+=50
            
            scoreDict["Lavender"]!+=50
            scoreDict["Lilac"]!+=50
            
            locked7 = true
            lockedSelection7 = selection
        }
    }
    
    
    //WHAT COLOR ARE YOUR NAILS RIGHT NOW
    func processSelection8(for selection: Int){
        
        //PINK/RED
        if(lockedSelection8 == 0 && locked8 == true){
            scoreDict["Pink Nude"]!+=100
            scoreDict["Sheer Pink"]!+=100
            scoreDict["Hot Pink"]!+=100
            scoreDict["Light Pink"]!+=100
            scoreDict["Neon Pink"]!+=100
            
            scoreDict["Barbie Pink"]!+=100
            scoreDict["Mauve"]!+=100
            scoreDict["Magenta"]!+=100
            scoreDict["Bubblegum Pink"]!+=100
            scoreDict["Classic Red"]!+=100
            scoreDict["Cherry Red"]!+=100
            scoreDict["Crimson Red"]!+=100
            scoreDict["Fire Engine Red"]!+=100
            scoreDict["Wine Red"]!+=100
            scoreDict["Ruby Red"]!+=100
            scoreDict["Maroon"]!+=100
            scoreDict["Burgundy"]!+=100
            
            locked8 = false
            lockedSelection8 = -1
        }
        
        //ORANGE/YELLOW
        if(lockedSelection8 == 1 && locked8 == true){
            scoreDict["Orange Red"]!+=50
            
            scoreDict["Coral"]!+=100
            scoreDict["Salmon"]!+=100
            scoreDict["Ginger Orange"]!+=100
            scoreDict["Burnt Orange"]!+=100
            scoreDict["Neon Orange"]!+=100
            scoreDict["Lemon Yellow"]!+=100
            scoreDict["Canary Yellow"]!+=100
            scoreDict["Pastel Yellow"]!+=100
            scoreDict["Neon Yellow"]!+=100
            scoreDict["Golden Yellow"]!+=100
            scoreDict["Creamy Yellow/Nude"]!+=100
            
            locked8 = false
            lockedSelection8 = -1
        }
        
        //GREEN BLUE
        if(lockedSelection8 == 2 && locked8 == true){
            
            scoreDict["Emerald Green"]!+=100
            scoreDict["Mint Green"]!+=100
            scoreDict["Olive Green"]!+=100
            scoreDict["Lime Green"]!+=100
            scoreDict["Forest Green"]!+=100
            scoreDict["Seafoam Green"]!+=100
            scoreDict["Navy Blue"]!+=100
            scoreDict["Sky Blue"]!+=100
            scoreDict["Royal Blue"]!+=100
            scoreDict["Turquoise Blue"]!+=100
            scoreDict["Teal Blue"]!+=100
            scoreDict["Denim Blue"]!+=100
            
            scoreDict["Electric Blue"]!+=100
            
            locked8 = false
            lockedSelection8 = -1
        }
        
        //NUDE WHITE
        if(lockedSelection8 == 3 && locked8 == true){
            scoreDict["White"]!+=100
            scoreDict["Nude"]!+=100
            scoreDict["Brown"]!+=100
            scoreDict["Chocolate"]!+=100
            scoreDict["Pink Nude"]!+=100
            
            scoreDict["Creamy Yellow/Nude"]!+=100
            
            locked8 = false
            lockedSelection8 = -1
        }
        
        //PURPLE
        if(lockedSelection8 == 4 && locked8 == true){
            scoreDict["Lavender"]!+=100
            scoreDict["Grape Purple"]!+=100
            scoreDict["Plum Purple"]!+=100
            scoreDict["Eggplant Purple"]!+=100
            scoreDict["Vibrant Purple"]!+=100
            scoreDict["Periwinkle Purple"]!+=100
            scoreDict["Lilac"]!+=100
            
            
            locked8 = false
            lockedSelection8 = -1
        }
        
        //OTHER
        if(lockedSelection8 == 5 && locked8 == true){
            
            locked8 = false
            lockedSelection8 = -1
        }
        
        
        //PINK RED
        if(selection == 0 && locked8 == false){
            scoreDict["Pink Nude"]!-=100
            scoreDict["Sheer Pink"]!-=100
            scoreDict["Hot Pink"]!-=100
            scoreDict["Light Pink"]!-=100
            scoreDict["Neon Pink"]!-=100
            
            scoreDict["Barbie Pink"]!-=100
            scoreDict["Mauve"]!-=100
            scoreDict["Magenta"]!-=100
            scoreDict["Bubblegum Pink"]!-=100
            scoreDict["Classic Red"]!-=100
            scoreDict["Cherry Red"]!-=100
            scoreDict["Crimson Red"]!-=100
            scoreDict["Fire Engine Red"]!-=100
            scoreDict["Wine Red"]!-=100
            scoreDict["Ruby Red"]!-=100
            scoreDict["Maroon"]!-=100
            scoreDict["Burgundy"]!-=100
            
            locked8 = true
            lockedSelection8 = selection
        }
        
        //ORANGE YELLOW
        if(selection == 1 && locked8 == false){
            scoreDict["Orange Red"]!-=100
            
            scoreDict["Coral"]!-=100
            scoreDict["Salmon"]!-=100
            scoreDict["Ginger Orange"]!-=100
            scoreDict["Burnt Orange"]!-=100
            scoreDict["Neon Orange"]!-=100
            scoreDict["Lemon Yellow"]!-=100
            scoreDict["Canary Yellow"]!-=100
            scoreDict["Pastel Yellow"]!-=100
            scoreDict["Neon Yellow"]!-=100
            scoreDict["Golden Yellow"]!-=100
            scoreDict["Creamy Yellow/Nude"]!-=100
            
            locked8 = true
            lockedSelection8 = selection
        }
        
        //GREEN BLUE
        if(selection == 2 && locked8 == false){
            scoreDict["Emerald Green"]!-=100
            scoreDict["Mint Green"]!-=100
            scoreDict["Olive Green"]!-=100
            scoreDict["Lime Green"]!-=100
            scoreDict["Forest Green"]!-=100
            scoreDict["Seafoam Green"]!-=100
            scoreDict["Navy Blue"]!-=100
            scoreDict["Sky Blue"]!-=100
            scoreDict["Royal Blue"]!-=100
            scoreDict["Turquoise Blue"]!-=100
            scoreDict["Teal Blue"]!-=100
            scoreDict["Denim Blue"]!-=100
            
            scoreDict["Electric Blue"]!-=100
            
            locked8 = true
            lockedSelection8 = selection
        }
        
        //nude WHITE
        if(selection == 3 && locked8 == false){
            scoreDict["White"]!-=100
            scoreDict["Nude"]!-=100
            scoreDict["Brown"]!-=100
            scoreDict["Chocolate"]!-=100
            scoreDict["Pink Nude"]!-=100
            
            scoreDict["Creamy Yellow/Nude"]!-=100
            
            locked8 = true
            lockedSelection8 = selection
        }
        
        //PURPLE
        if(selection == 4 && locked8 == false){
            scoreDict["Lavender"]!-=100
            scoreDict["Grape Purple"]!-=100
            scoreDict["Plum Purple"]!-=100
            scoreDict["Eggplant Purple"]!-=100
            scoreDict["Vibrant Purple"]!-=100
            scoreDict["Periwinkle Purple"]!-=100
            scoreDict["Lilac"]!-=100
            
            locked8 = true
            lockedSelection8 = selection
        }
        
        //OTHER
        if(selection == 5 && locked8 == false){
            
            locked8 = true
            lockedSelection8 = selection
        }
    }
    
    
    
    
    
    
    //DOES YOUR SKIN HAVE YELLOW OR PINK UNDERTONES
    func processSelection9(for selection: Int){
        
        //YELLOW
        if(lockedSelection9 == 0 && locked9 == true){
            
            
            locked9 = false
            lockedSelection9 = -1
        }
        
        //PINK
        if(lockedSelection9 == 1 && locked9 == true){
            
            locked9 = false
            lockedSelection9 = -1
        }
        
        //IM NOT SURE
        if(lockedSelection9 == 2 && locked9 == true){
            
            locked9 = false
            lockedSelection9 = -1
        }
        
        //INBETWEEN
        if(lockedSelection9 == 3 && locked9 == true){
            
            locked9 = false
            lockedSelection9 = -1
        }
        
        //YELLOW
        if(selection == 0 && locked9 == false){
            
            
            locked9 = true
            lockedSelection9 = selection
        }
        
        //PINK
        if(selection == 1 && locked9 == false){
            
            locked9 = true
            lockedSelection9 = selection
        }
        
        //IM NOT SURE
        if(selection == 2 && locked9 == false){
            
            locked9 = true
            lockedSelection9 = selection
        }
        
        //INBETWEEN
        if(selection == 3 && locked9 == false){
            
            locked9 = true
            lockedSelection9 = selection
        }
    }
    
    
    
    
    
    
    
    //I WANT MY NAILS TO LOOK
    func processSelection10(for selection: Int){

        //POLISHED AND PROF
        if(lockedSelection10 == 0 && locked10 == true){
            scoreDict["Nude"]!-=75
            scoreDict["Chocolate"]!-=75
            scoreDict["Pink Nude"]!-=75
            scoreDict["Sheer Pink"]!-=75
            scoreDict["Light Pink"]!-=75
            
            scoreDict["Wine Red"]!-=75
            scoreDict["Ruby Red"]!-=75
            scoreDict["Maroon"]!-=75
            scoreDict["Burgundy"]!-=75
            
            scoreDict["Creamy Yellow/Nude"]!-=75
            
            scoreDict["Forest Green"]!-=75
            scoreDict["Navy Blue"]!-=75
            
            scoreDict["Eggplant Purple"]!-=75
            
            locked10 = false
            lockedSelection10 = -1
        }
        
        //COLORFUL CREATIVE
        if(lockedSelection10 == 1 && locked10 == true){
            scoreDict["Hot Pink"]!-=75
            scoreDict["Neon Pink"]!-=75
            
            scoreDict["Bubblegum Pink"]!-=75
            
            scoreDict["Coral"]!-=75
            scoreDict["Salmon"]!-=75
            scoreDict["Lemon Yellow"]!-=75
            scoreDict["Neon Yellow"]!-=75
            
            scoreDict["Mint Green"]!-=75
            scoreDict["Lime Green"]!-=75
            scoreDict["Seafoam Green"]!-=75
            scoreDict["Sky Blue"]!-=75
            scoreDict["Teal Blue"]!-=75
            
            scoreDict["Grape Purple"]!-=75
            scoreDict["Vibrant Purple"]!-=75
            
            locked10 = false
            lockedSelection10 = -1
        }
        
        //TRENDY AND FASHIONABLE
        if(lockedSelection10 == 2 && locked10 == true){
            scoreDict["Brown"]!-=75
            scoreDict["Chocolate"]!-=75
            
            scoreDict["Fire Engine Red"]!-=75
            scoreDict["Ruby Red"]!-=75
            scoreDict["Orange Red"]!-=75
            
            scoreDict["Ginger Orange"]!-=75
            
            scoreDict["Emerald Green"]!-=75
            scoreDict["Olive Green"]!-=75
            scoreDict["Lime Green"]!-=75
            scoreDict["Forest Green"]!-=75
            scoreDict["Navy Blue"]!-=75
            scoreDict["Denim Blue"]!-=75
            
            scoreDict["Periwinkle Purple"]!-=75
            scoreDict["Electric Blue"]!-=75
            
            locked10 = false
            lockedSelection10 = -1
        }
        
        //BOLD AND DARING
        if(lockedSelection10 == 3 && locked10 == true){
            scoreDict["Hot Pink"]!-=75
            
            scoreDict["Cherry Red"]!-=75
            scoreDict["Crimson Red"]!-=75
            scoreDict["Fire Engine Red"]!-=75
            scoreDict["Ruby Red"]!-=75
            scoreDict["Maroon"]!-=75
            
            scoreDict["Burnt Orange"]!-=75
            scoreDict["Lemon Yellow"]!-=75
            scoreDict["Neon Yellow"]!-=75
            
            scoreDict["Lime Green"]!-=75
            scoreDict["Navy Blue"]!-=75
            scoreDict["Royal Blue"]!-=75
            
            scoreDict["Black"]!-=75
            
            locked10 = false
            lockedSelection10 = -1
        }
        
        //EDGY AND UNIQUE
        if(lockedSelection10 == 4 && locked10 == true){
            scoreDict["Hot Pink"]!-=75
            
            scoreDict["Orange Red"]!-=75
            
            scoreDict["Coral"]!-=75
            scoreDict["Salmon"]!-=75
            scoreDict["Ginger Orange"]!-=75
            scoreDict["Burnt Orange"]!-=75
            scoreDict["Golden Yellow"]!-=75
            
            scoreDict["Forest Green"]!-=75
            scoreDict["Navy Blue"]!-=75
            scoreDict["Turquoise Blue"]!-=75
            
            scoreDict["Grape Purple"]!-=75
            scoreDict["Plum Purple"]!-=75
            scoreDict["Eggplant Purple"]!-=75
            scoreDict["Vibrant Purple"]!-=75
            scoreDict["Black"]!-=75
            
            locked10 = false
            lockedSelection10 = -1
        }
        
        //NATURAL AND UNDERSTATED
        if(lockedSelection10 == 5 && locked10 == true){
            scoreDict["Nude"]!-=150
            scoreDict["Brown"]!-=100
            scoreDict["Chocolate"]!-=100
            scoreDict["Pink Nude"]!-=150
            scoreDict["Sheer Pink"]!-=150
            scoreDict["Light Pink"]!-=150
            
            scoreDict["Creamy Yellow/Nude"]!-=150
            
            locked10 = false
            lockedSelection10 = -1
        }
        
        //POLISHED PROF
        if(selection == 0 && locked10 == false){
            scoreDict["Nude"]!+=75
            scoreDict["Chocolate"]!+=75
            scoreDict["Pink Nude"]!+=75
            scoreDict["Sheer Pink"]!+=75
            scoreDict["Light Pink"]!+=75
            
            scoreDict["Wine Red"]!+=75
            scoreDict["Ruby Red"]!+=75
            scoreDict["Maroon"]!+=75
            scoreDict["Burgundy"]!+=75
            
            scoreDict["Creamy Yellow/Nude"]!+=75
            
            scoreDict["Forest Green"]!+=75
            scoreDict["Navy Blue"]!+=75
            
            scoreDict["Eggplant Purple"]!+=75
            
            locked10 = true
            lockedSelection10 = selection
        }
        
        //COLORFUL CREATIVE
        if(selection == 1 && locked10 == false){
            scoreDict["Hot Pink"]!+=75
            scoreDict["Neon Pink"]!+=75
            
            scoreDict["Bubblegum Pink"]!+=75
            
            scoreDict["Coral"]!+=75
            scoreDict["Salmon"]!+=75
            scoreDict["Lemon Yellow"]!+=75
            scoreDict["Neon Yellow"]!+=75
            
            scoreDict["Mint Green"]!+=75
            scoreDict["Lime Green"]!+=75
            scoreDict["Seafoam Green"]!+=75
            scoreDict["Sky Blue"]!+=75
            scoreDict["Teal Blue"]!+=75
            
            scoreDict["Grape Purple"]!+=75
            scoreDict["Vibrant Purple"]!+=75
            
            locked10 = true
            lockedSelection10 = selection
        }
        
        //TRENDY AND FASHIONABLE
        if(selection == 2 && locked10 == false){
            scoreDict["Brown"]!+=75
            scoreDict["Chocolate"]!+=75
            
            scoreDict["Fire Engine Red"]!+=75
            scoreDict["Ruby Red"]!+=75
            scoreDict["Orange Red"]!+=75
            
            scoreDict["Ginger Orange"]!+=75
            
            scoreDict["Emerald Green"]!+=75
            scoreDict["Olive Green"]!+=75
            scoreDict["Lime Green"]!+=75
            scoreDict["Forest Green"]!+=75
            scoreDict["Navy Blue"]!+=75
            scoreDict["Denim Blue"]!+=75
            
            scoreDict["Periwinkle Purple"]!+=75
            scoreDict["Electric Blue"]!+=75
            
            locked10 = true
            lockedSelection10 = selection
        }
        
        //BOLD AND DARING
        if(selection == 3 && locked10 == false){
            scoreDict["Hot Pink"]!+=75
            
            scoreDict["Cherry Red"]!+=75
            scoreDict["Crimson Red"]!+=75
            scoreDict["Fire Engine Red"]!+=75
            scoreDict["Ruby Red"]!+=75
            scoreDict["Maroon"]!+=75
            
            scoreDict["Burnt Orange"]!+=75
            scoreDict["Lemon Yellow"]!+=75
            scoreDict["Neon Yellow"]!+=75
            
            scoreDict["Lime Green"]!+=75
            scoreDict["Navy Blue"]!+=75
            scoreDict["Royal Blue"]!+=75
            
            scoreDict["Black"]!+=75
            
            
            locked10 = true
            lockedSelection10 = selection
        }
        
        //EDGY AND UNIQUE
        if(selection == 4 && locked10 == false){
            scoreDict["Hot Pink"]!+=75
            
            scoreDict["Orange Red"]!+=75
            
            scoreDict["Coral"]!+=75
            scoreDict["Salmon"]!+=75
            scoreDict["Ginger Orange"]!+=75
            scoreDict["Burnt Orange"]!+=75
            scoreDict["Golden Yellow"]!+=75
            
            scoreDict["Forest Green"]!+=75
            scoreDict["Navy Blue"]!+=75
            scoreDict["Turquoise Blue"]!+=75
            
            scoreDict["Grape Purple"]!+=75
            scoreDict["Plum Purple"]!+=75
            scoreDict["Eggplant Purple"]!+=75
            scoreDict["Vibrant Purple"]!+=75
            scoreDict["Black"]!+=75
            
            locked10 = true
            lockedSelection10 = selection
        }
        
        //NATURAL AND UNDERSTATED
        if(selection == 5 && locked10 == false){
            scoreDict["Nude"]!+=150
            scoreDict["Brown"]!+=100
            scoreDict["Chocolate"]!+=100
            scoreDict["Pink Nude"]!+=150
            scoreDict["Sheer Pink"]!+=150
            scoreDict["Light Pink"]!+=150
            
            scoreDict["Creamy Yellow/Nude"]!+=150
            
            locked10 = true
            lockedSelection10 = selection
        }
    
    }
    
    
    
    
    
    
    
    //WHAT COLOR FAMILY IS YOUR FAVORITE
    func processSelection11(for selection: Int){

        //PASTEL
        if(lockedSelection11 == 0 && locked11 == true){
            scoreDict["Light Pink"]!-=30
            
            scoreDict["Pastel Yellow"]!-=30
            
            scoreDict["Mint Green"]!-=30
            scoreDict["Sky Blue"]!-=30
            
            scoreDict["Lavender"]!-=30
            scoreDict["Lilac"]!-=30
            
            locked11 = false
            lockedSelection11 = -1
        }
        
        //NEON
        if(lockedSelection11 == 1 && locked11 == true){
            scoreDict["Neon Pink"]!-=50
            
            scoreDict["Neon Orange"]!-=50
            scoreDict["Neon Yellow"]!-=50
            
            scoreDict["Lime Green"]!-=50
            
            scoreDict["Vibrant Purple"]!-=50
            scoreDict["Electric Blue"]!-=50
            
            locked11 = false
            lockedSelection11 = -1
        }
        
        //VIBRANT
        if(lockedSelection11 == 2 && locked11 == true){
            scoreDict["Hot Pink"]!-=30
            
            scoreDict["Barbie Pink"]!-=30
            scoreDict["Fire Engine Red"]!-=30
            scoreDict["Orange Red"]!-=30
            
            scoreDict["Neon Orange"]!-=50
            scoreDict["Lemon Yellow"]!-=50
            
            scoreDict["Lime Green"]!-=30
            scoreDict["Royal Blue"]!-=30
            
            scoreDict["Grape Purple"]!-=30
            scoreDict["Electric Blue"]!-=30
            
            locked11 = false
            lockedSelection11 = -1
        }
        
        //DARK
        if(lockedSelection11 == 3 && locked11 == true){
            scoreDict["Brown"]!-=30
            scoreDict["Chocolate"]!-=30
            
            scoreDict["Magenta"]!-=30
            scoreDict["Wine Red"]!-=30
            scoreDict["Maroon"]!-=30
            scoreDict["Burgundy"]!-=30
            
            scoreDict["Burnt Orange"]!-=30
            
            scoreDict["Forest Green"]!-=30
            scoreDict["Navy Blue"]!-=30
            
            scoreDict["Eggplant Purple"]!-=30
            scoreDict["Gray"]!-=30
            scoreDict["Black"]!-=30
            
            locked11 = false
            lockedSelection11 = -1
        }
        
        
        
        //PASTEL
        if(selection == 0 && locked11 == false){
            scoreDict["Light Pink"]!+=30
            
            scoreDict["Pastel Yellow"]!+=30
            
            scoreDict["Mint Green"]!+=30
            scoreDict["Sky Blue"]!+=30
            
            scoreDict["Lavender"]!+=30
            scoreDict["Lilac"]!+=30
            
            locked11 = true
            lockedSelection11 = selection
        }
        
        //NEON
        if(selection == 1 && locked11 == false){
            scoreDict["Neon Pink"]!+=50
            
            scoreDict["Neon Orange"]!+=50
            scoreDict["Neon Yellow"]!+=50
            
            scoreDict["Lime Green"]!+=50
            
            scoreDict["Vibrant Purple"]!+=50
            scoreDict["Electric Blue"]!+=50
            
            locked11 = true
            lockedSelection11 = selection
        }
        
        //VIBRANT
        if(selection == 2 && locked11 == false){
            scoreDict["Hot Pink"]!+=30
            
            scoreDict["Barbie Pink"]!+=30
            scoreDict["Fire Engine Red"]!+=30
            scoreDict["Orange Red"]!+=30
            
            scoreDict["Neon Orange"]!+=50
            scoreDict["Lemon Yellow"]!+=50
            
            scoreDict["Lime Green"]!+=30
            scoreDict["Royal Blue"]!+=30
            
            scoreDict["Grape Purple"]!+=30
            scoreDict["Electric Blue"]!+=30
            
            locked11 = true
            lockedSelection11 = selection
        }
        
        //DARK
        if(selection == 3 && locked11 == false){
            scoreDict["Brown"]!+=30
            scoreDict["Chocolate"]!+=30
            
            scoreDict["Magenta"]!+=30
            scoreDict["Wine Red"]!+=30
            scoreDict["Maroon"]!+=30
            scoreDict["Burgundy"]!+=30
            
            scoreDict["Burnt Orange"]!+=30
            
            scoreDict["Forest Green"]!+=30
            scoreDict["Navy Blue"]!+=30
            
            scoreDict["Eggplant Purple"]!+=30
            scoreDict["Gray"]!+=30
            scoreDict["Black"]!+=30
            
            locked11 = true
            lockedSelection11 = selection
        }
    
    }
    
    
    
    
    
    
    
    //DO YOU HAVE TATTOOS
    func processSelection12(for selection: Int){

        //YES
        if(lockedSelection12 == 0 && locked12 == true){
            
            
            locked12 = false
            lockedSelection12 = -1
        }
        
        //NO
        if(lockedSelection12 == 1 && locked12 == true){
            
            locked12 = false
            lockedSelection12 = -1
        }
        
        
        //YES
        if(selection == 0 && locked12 == false){
            
            
            locked12 = true
            lockedSelection12 = selection
        }
        
        //NO
        if(selection == 1 && locked12 == false){
           
            locked12 = true
            lockedSelection12 = selection
        }
        
    
    }
    
    
    //WHAT COLOR ARE YOUR EYES
    func processSelection13(for selection: Int){

        //GREEN
        if(lockedSelection13 == 0 && locked13 == true){
            
            
            locked13 = false
            lockedSelection13 = -1
        }
        
        //BLUE
        if(lockedSelection13 == 1 && locked13 == true){
            
            locked13 = false
            lockedSelection13 = -1
        }
        
        //BROWN
        if(lockedSelection13 == 2 && locked13 == true){
            
            locked13 = false
            lockedSelection13 = -1
        }
        
        //HAZEL
        if(lockedSelection13 == 3 && locked13 == true){
            
            locked13 = false
            lockedSelection13 = -1
        }
        
        //SILVER
        if(lockedSelection13 == 4 && locked13 == true){
            
            locked13 = false
            lockedSelection13 = -1
        }
        
        
        //GREEN
        if(selection == 0 && locked13 == false){
            
            
            locked13 = true
            lockedSelection13 = selection
        }
        
        //BLUE
        if(selection == 1 && locked13 == false){
            
            locked13 = true
            lockedSelection13 = selection
        }
        
        //BROWN
        if(selection == 2 && locked13 == false){
            
            locked13 = true
            lockedSelection13 = selection
        }
        
        //HAZEL
        if(selection == 3 && locked13 == false){
            
            locked13 = true
            lockedSelection13 = selection
        }
        
        //SILVER
        if(selection == 4 && locked13 == false){
            
            locked13 = true
            lockedSelection13 = selection
        }
    
    }
    
    
    
    
    
    
    
    
    //WHAT COLOR JEWELRY DO YOU WEAR
    func processSelection14(for selection: Int){

        //GOLD
        if(lockedSelection14 == 0 && locked14 == true){
            
            
            locked14 = false
            lockedSelection14 = -1
        }
        
        //SILVER
        if(lockedSelection14 == 1 && locked14 == true){
            
            locked14 = false
            lockedSelection14 = -1
        }
        
        //MIXED
        if(lockedSelection14 == 2 && locked14 == true){
           
            locked14 = false
            lockedSelection14 = -1
        }
        
        //NONE
        if(lockedSelection14 == 3 && locked14 == true){
            
            locked14 = false
            lockedSelection14 = -1
        }
        
        
        
        //GOLD
        if(selection == 0 && locked14 == false){
            
            
            locked14 = true
            lockedSelection14 = selection
        }
        
        //SILVER
        if(selection == 1 && locked14 == false){
            
            locked14 = true
            lockedSelection14 = selection
        }
        
        //MIXED
        if(selection == 2 && locked14 == false){
            
            locked14 = true
            lockedSelection14 = selection
        }
        
        //NONE
        if(selection == 3 && locked14 == false){
            
            locked14 = true
            lockedSelection14 = selection
        }
    
    }
    
    
    //WHAT SEASON IS IT
    func processSelection15(for selection: Int){

        //SPRING
        if(lockedSelection15 == 0 && locked15 == true){
            scoreDict["White"]!-=50
            scoreDict["Pink Nude"]!-=50
            scoreDict["Sheer Pink"]!-=50
            scoreDict["Light Pink"]!-=50
            
            scoreDict["Coral"]!-=50
            scoreDict["Salmon"]!-=50
            scoreDict["Pastel Yellow"]!-=50
            
            scoreDict["Mint Green"]!-=50
            scoreDict["Seafoam Green"]!-=50
            scoreDict["Sky Blue"]!-=50
            
            scoreDict["Lavender"]!-=50
            scoreDict["Lilac"]!-=50
            
            locked15 = false
            lockedSelection15 = -1
        }
        
        //SUMMER
        if(lockedSelection15 == 1 && locked15 == true){
            scoreDict["Hot Pink"]!-=50
            scoreDict["Neon Pink"]!-=50
            
            scoreDict["Barbie Pink"]!-=50
            scoreDict["Fire Engine Red"]!-=50
            scoreDict["Orange Red"]!-=50
            
            scoreDict["Coral"]!-=50
            scoreDict["Salmon"]!-=50
            scoreDict["Neon Orange"]!-=50
            scoreDict["Lemon Yellow"]!-=50
            scoreDict["Golden Yellow"]!-=50
            
            scoreDict["Lime Green"]!-=50
            scoreDict["Sky Blue"]!-=50
            scoreDict["Royal Blue"]!-=50
            scoreDict["Turquoise Blue"]!-=50
            scoreDict["Teal Blue"]!-=50
            
            scoreDict["Grape Purple"]!-=50
            scoreDict["Vibrant Purple"]!-=50
            scoreDict["Lilac"]!-=50
            scoreDict["Electric Blue"]!-=50
            
            locked15 = false
            lockedSelection15 = -1
        }
        
        //FALL
        if(lockedSelection15 == 2 && locked15 == true){
            scoreDict["Brown"]!-=50
            scoreDict["Chocolate"]!-=50
            
            scoreDict["Magenta"]!-=50
            scoreDict["Cherry Red"]!-=50
            scoreDict["Crimson Red"]!-=50
            scoreDict["Wine Red"]!-=50
            scoreDict["Ruby Red"]!-=50
            scoreDict["Maroon"]!-=50
            scoreDict["Burgundy"]!-=50
            
            scoreDict["Ginger Orange"]!-=50
            scoreDict["Burnt Orange"]!-=50
            
            scoreDict["Forest Green"]!-=50
            
            scoreDict["Gray"]!-=50
            scoreDict["Black"]!-=50
            
            locked15 = false
            lockedSelection15 = -1
        }
        
        //WINTER
        if(lockedSelection15 == 3 && locked15 == true){
            scoreDict["White"]!-=50
            scoreDict["Nude"]!-=50
            scoreDict["Brown"]!-=50
            scoreDict["Chocolate"]!-=50
            scoreDict["Pink Nude"]!-=50
            scoreDict["Sheer Pink"]!-=50
            scoreDict["Light Pink"]!-=50
            
            scoreDict["Cherry Red"]!-=50
            scoreDict["Wine Red"]!-=50
            scoreDict["Ruby Red"]!-=50
            scoreDict["Maroon"]!-=50
            scoreDict["Burgundy"]!-=50
            
            scoreDict["Forest Green"]!-=50
            
            locked15 = false
            lockedSelection15 = -1
        }
        
        
        
        //SPRING
        if(selection == 0 && locked15 == false){
            scoreDict["White"]!+=50
            scoreDict["Pink Nude"]!+=50
            scoreDict["Sheer Pink"]!+=50
            scoreDict["Light Pink"]!+=50
            
            scoreDict["Coral"]!+=50
            scoreDict["Salmon"]!+=50
            scoreDict["Pastel Yellow"]!+=50
            
            scoreDict["Mint Green"]!+=50
            scoreDict["Seafoam Green"]!+=50
            scoreDict["Sky Blue"]!+=50
            
            scoreDict["Lavender"]!+=50
            scoreDict["Lilac"]!+=50
            
            
            locked15 = true
            lockedSelection15 = selection
        }
        
        //SUMMER
        if(selection == 1 && locked15 == false){
            scoreDict["Hot Pink"]!+=50
            scoreDict["Neon Pink"]!+=50
            
            scoreDict["Barbie Pink"]!+=50
            scoreDict["Fire Engine Red"]!+=50
            scoreDict["Orange Red"]!+=50
            
            scoreDict["Coral"]!+=50
            scoreDict["Salmon"]!+=50
            scoreDict["Neon Orange"]!+=50
            scoreDict["Lemon Yellow"]!+=50
            scoreDict["Golden Yellow"]!+=50
            
            scoreDict["Lime Green"]!+=50
            scoreDict["Sky Blue"]!+=50
            scoreDict["Royal Blue"]!+=50
            scoreDict["Turquoise Blue"]!+=50
            scoreDict["Teal Blue"]!+=50
            
            scoreDict["Grape Purple"]!+=50
            scoreDict["Vibrant Purple"]!+=50
            scoreDict["Lilac"]!+=50
            scoreDict["Electric Blue"]!+=50
            
            locked15 = true
            lockedSelection15 = selection
        }
        
        //FALL
        if(selection == 2 && locked15 == false){
            scoreDict["Brown"]!+=50
            scoreDict["Chocolate"]!+=50
            
            scoreDict["Magenta"]!+=50
            scoreDict["Cherry Red"]!+=50
            scoreDict["Crimson Red"]!+=50
            scoreDict["Wine Red"]!+=50
            scoreDict["Ruby Red"]!+=50
            scoreDict["Maroon"]!+=50
            scoreDict["Burgundy"]!+=50
            
            scoreDict["Ginger Orange"]!+=50
            scoreDict["Burnt Orange"]!+=50
            
            scoreDict["Forest Green"]!+=50
            
            scoreDict["Gray"]!+=50
            scoreDict["Black"]!+=50
            
            locked15 = true
            lockedSelection15 = selection
        }
        
        //WINTER
        if(selection == 3 && locked15 == false){
            scoreDict["White"]!+=50
            scoreDict["Nude"]!+=50
            scoreDict["Brown"]!+=50
            scoreDict["Chocolate"]!+=50
            scoreDict["Pink Nude"]!+=50
            scoreDict["Sheer Pink"]!+=50
            scoreDict["Light Pink"]!+=50
            
            scoreDict["Cherry Red"]!+=50
            scoreDict["Wine Red"]!+=50
            scoreDict["Ruby Red"]!+=50
            scoreDict["Maroon"]!+=50
            scoreDict["Burgundy"]!+=50
            
            scoreDict["Forest Green"]!+=50
            
            locked15 = true
            lockedSelection15 = selection
        }
    
    }
    
    
    
    

}




