//
//  QuestionLayout.swift
//  NailColor
//
//  Created by Madeline Skeel on 3/24/23.
//

import Foundation
import SwiftUI

struct QuestionLayout: View{
    
    
    @ObservedObject var viewModel: Quiz
    //var proxy: GeometryProxy
    
    let question: String
    let numButtons: Int
    let answers: [String]
    let processSelNum: Int
    @State var buttTapNum: [Bool]
    
    var devWidth: CGFloat {
            if UIDevice.current.userInterfaceIdiom == .phone {
                return UIScreen.main.bounds.width
            } else {
                return UIScreen.main.bounds.width
            }
        }
    
    var devHeight: CGFloat {
            if UIDevice.current.userInterfaceIdiom == .phone {
                return UIScreen.main.bounds.height
            } else {
                return UIScreen.main.bounds.height
            }
        }
    
    
    
    
    var body: some View{
        //GeometryReader { geometry in
            
            VStack{
                
                QuestionText(Question: question)
                
                //Text(question)//.multilineTextAlignment(.left)
                    //.foregroundColor(Color.black)
                
                    //.font(.custom("Optima_Italic", size: devWidth*0.04))
                                               
                                               
                
                //Text(question).foregroundColor(Color.black).custom(
                
                
                ForEach(0...numButtons, id: \.self) { count in
                    
                    
                    if(processSelNum == 1){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection1(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 2){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection2(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 3){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection3(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 4){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection4(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 5){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection5(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 6){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection6(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 7){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection7(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 8){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection8(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 9){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection9(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 10){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection10(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 11){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection11(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 12){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection12(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else if(processSelNum == 13){
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection13(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                    
                    else{
                        Button(title: answers[count],
                               backgroundColor: Color.pink, isTapped: $buttTapNum[count]).onTapGesture {
                            viewModel.processSelection14(for: count)
                        
                            buttTapNum = Array(repeating: false, count: buttTapNum.count)
                            buttTapNum[count] = true
                        }
                        
                    }
                }
                
                /*ForEach(0...numButtons, id: \.self){ count in
                    
                    Button(title: answers[count], backgroundColor: Color.pink, isTapped: $buttTapNum[count], proxy: geometry).onTapGesture{viewModel.processSelection1(for: count)}
                    
                    buttTapNum = Array(repeating: false, count: buttTapNum.count)
                    buttTapNum[count] = true
                
                }*/
                
                
            //}
        }
    }
}
