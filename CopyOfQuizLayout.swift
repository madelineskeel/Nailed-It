//  QuizLayout.swift
//  NailColor
//
//  Created by Madeline Skeel on 2/25/23.
//

import Foundation

import SwiftUI

struct CopyOfQuizLayout: View{
    
    //var proxy: GeometryProxy
    
    @ObservedObject var viewModel: Quiz
    
    @State var buttTapResults = false
    @State var showResults = false
    
    //5, 7, 4, 5, 5, 4, 6, 5, 4, 6, 4, 2, 5, 4
    @State var buttTapQ1 = [false, false, false, false, false]
    @State var buttTapQ2 = [false, false, false, false, false, false, false]
    @State var buttTapQ3 = [false, false, false, false]
    @State var buttTapQ4 = [false, false, false, false, false]
    @State var buttTapQ5 = [false, false, false, false, false]
    @State var buttTapQ6 = [false, false, false, false]
    @State var buttTapQ7 = [false, false, false, false, false, false]
    @State var buttTapQ8 = [false, false, false, false, false, false]
    @State var buttTapQ9 = [false, false, false, false]
    @State var buttTapQ10 = [false, false, false, false, false, false]
    @State var buttTapQ11 = [false, false, false, false]
    @State var buttTapQ12 = [false, false]
    @State var buttTapQ13 = [false, false, false, false, false]
    @State var buttTapQ14 = [false, false, false, false]
    @State var buttTapQ15 = [false, false, false, false]
    
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
    
    
        @State var colorResults = [(key: "Yellow", value: 0), (key: "Red", value: 0), (key: "Purple", value: 0), (key: "Blue", value: 0), (key: "Green", value: 0)]
    
    
    
    
    var body: some View{
        //GeometryReader { geometry in
            
            if (showResults == false){
                ScrollView{
                    
                    VStack{
                        Text("WHAT COLOR SHOULD YOU PAINT YOUR NAILS?").foregroundColor(Color.black).font(.custom("BodoniSvtyTwoSCITCTT-Book", size: devWidth*0.1)).padding(EdgeInsets.init(top: devHeight*0.03, leading: devWidth*0.05, bottom: devHeight*0.01, trailing: devWidth*0.05)).multilineTextAlignment(.center)
                        
                        QuestionLayout(viewModel: viewModel, question: "How long are your nails?", numButtons: 4, answers: viewModel.answers1, processSelNum: 1, buttTapNum: buttTapQ1)
                        QuestionLayout(viewModel: viewModel, question: "What shape are your nails?", numButtons: 6, answers: viewModel.answers2, processSelNum: 2, buttTapNum: buttTapQ2)
                        QuestionLayout(viewModel: viewModel, question: "How often are your nails painted?", numButtons: 3, answers: viewModel.answers3, processSelNum: 3, buttTapNum: buttTapQ3)
                        QuestionLayout(viewModel: viewModel, question: "Why are you painting your nails?", numButtons: 4, answers: viewModel.answers4, processSelNum: 4, buttTapNum: buttTapQ4)
                        QuestionLayout(viewModel: viewModel, question: "Which adjective describes you the best right now?", numButtons: 4, answers: viewModel.answers5, processSelNum: 5, buttTapNum: buttTapQ5)
                    }
                    
                    
                    VStack{
                        QuestionLayout(viewModel: viewModel, question: "What is your astrological sign?", numButtons: 3, answers: viewModel.answers6, processSelNum: 6, buttTapNum: buttTapQ6)
                        QuestionLayout(viewModel: viewModel, question: "What has your mood been recently?", numButtons: 5, answers: viewModel.answers7, processSelNum: 7, buttTapNum: buttTapQ7)
                        QuestionLayout(viewModel: viewModel, question: "What color are your nails right now?", numButtons: 5, answers: viewModel.answers8, processSelNum: 8, buttTapNum: buttTapQ8)
                        QuestionLayout(viewModel: viewModel, question: "Does your skin have warm or cool undertones?", numButtons: 3, answers: viewModel.answers9, processSelNum: 9, buttTapNum: buttTapQ9)
                        QuestionLayout(viewModel: viewModel, question: "I want my nails to look ______.", numButtons: 5, answers: viewModel.answers10, processSelNum: 10, buttTapNum: buttTapQ10)
                    }
                    
                     
                     
                    VStack{
                         
                        QuestionLayout(viewModel: viewModel, question: "Beyond nail polish what is your favorite color family?", numButtons: 3, answers: viewModel.answers11, processSelNum: 11, buttTapNum: buttTapQ11)
                        QuestionLayout(viewModel: viewModel, question: "Do you have tattoos?", numButtons: 1, answers: viewModel.answers12, processSelNum: 12, buttTapNum: buttTapQ12)
                        QuestionLayout(viewModel: viewModel, question: "What color are your eyes?", numButtons: 4, answers: viewModel.answers13, processSelNum: 13, buttTapNum: buttTapQ13)
                        QuestionLayout(viewModel: viewModel, question: "What color jewelry do you wear?", numButtons: 3, answers: viewModel.answers14, processSelNum: 14, buttTapNum: buttTapQ14)
                        
                        QuestionLayout(viewModel: viewModel, question: "What season is it?", numButtons: 3, answers: viewModel.answers15, processSelNum: 15, buttTapNum: buttTapQ15)
                        
                        
                        Text(" ")
                
                        Button(title: "SHOW RESULTS",
                               backgroundColor: Color.pink, isTapped: $buttTapResults).onTapGesture {
                            showResults = true
                            colorResults = viewModel.getResults()
                     
                     }
                     }
                     
                     
                     
                    
                }
            }
                
                else if(showResults == true){
                    ResultsView(viewModel: viewModel, colorResults: $colorResults)
                }
                
                
                
                
            }
            
        //}
    }
