//
//  HomeView.swift
//  NailColor
//
//  Created by Madeline Skeel on 3/9/23.
//

import Foundation
import SwiftUI

struct HomeView: View{
    
    @ObservedObject var viewModel: Quiz
    
    @State var buttTapStart = false
    @State var startGame = false
    
    //var proxy: GeometryProxy
    
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
                Spacer()
                /*ZStack{
                 
                 Text("")
                 .background().frame(maxWidth: .infinity, maxHeight: .infinity)
                 .background(Color.pink.opacity(0.5))
                 .brightness(0.6)
                 
                 VStack{
                 
                 Text("WHAT COLOR SHOULD YOU PAINT YOUR NAILS??").foregroundColor(Color.black).font(.custom("Optima-Italic", size: 30)).padding(EdgeInsets.init(top: 70, leading: 20, bottom: 10, trailing: 20))
                 Spacer()*/
                if(startGame == false){
                    
                    //Text("")
                        //.background().frame(maxWidth: .infinity, maxHeight: .infinity)
                        //.background(Color.pink.opacity(0.5))
                        //.brightness(0.6)
                    VStack{
                        //Text("WHAT COLOR SHOULD YOU PAINT YOUR NAILS?").foregroundColor(Color.black).font(.custom("BodoniSvtyTwoSCITCTT-Book", size: devWidth*0.1)).padding(EdgeInsets.init(top: devHeight*0.03, leading: devWidth*0.05, bottom: devHeight*0.01, trailing: devWidth*0.05)).multilineTextAlignment(.center)
                        
                        Image("Title")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: devWidth*0.95, height: devHeight*0.5)
                            .padding(EdgeInsets.init(top: devHeight*0.05, leading: 0, bottom: 0, trailing: 0))
                        
                        Spacer()
                        Button(title: "START QUIZ",
                               backgroundColor: Color.pink, isTapped: $buttTapStart).onTapGesture {
                            
                            startGame = true
                            
                        }.padding(EdgeInsets.init(top: 0, leading: 0, bottom: devHeight*0.12, trailing: 0))
                    }
                }
                else if(startGame == true){
                    CopyOfQuizLayout(viewModel: viewModel)
                }
            }
        //}
    }
    }
    

