//
//  ResultsView.swift
//  NailColor
//
//  Created by Madeline Skeel on 2/27/23.
//

import Foundation
import SwiftUI

struct ResultsView: View{
    
    @ObservedObject var viewModel: Quiz
    
    @Binding var colorResults: [(key: String, value: Int)]
    
    @State var buttTapResults = false
    @State var showHome = false
    
    @State var i = 0
    
    
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
                
                if (showHome == false){
                    
                    /*Text("WHAT COLOR SHOULD YOU PAINT YOUR NAILS?").foregroundColor(Color.black).font(.custom("BodoniSvtyTwoSCITCTT-Book", size: devWidth*0.1)).padding(EdgeInsets.init(top: devHeight*0.03, leading: devWidth*0.05, bottom: devHeight*0.01, trailing: devWidth*0.05)).multilineTextAlignment(.center)*/
                    
                    Text("THE IDEAL SHADES FOR YOU ARE...").foregroundColor(Color.black).font(.custom("BodoniSvtyTwoSCITCTT-Book", size: devWidth*0.11)).padding(EdgeInsets.init(top: devHeight*0.03, leading: devWidth*0.05, bottom: devHeight*0.01, trailing: devWidth*0.05)).multilineTextAlignment(.center)
                    
                    VStack{
                        
                        
                        Text(colorResults[0].key).foregroundColor(Color.black).font(.custom("BodoniSvtyTwoSCITCTT-Book", size: devWidth*0.09)).padding(EdgeInsets.init(top: 0, leading: 0, bottom: devHeight*0.008, trailing: 0)).multilineTextAlignment(.center)
                        
                        
                        if(i>0){
                            Text(colorResults[1].key).foregroundColor(Color.black).font(.custom("BodoniSvtyTwoSCITCTT-Book", size: devWidth*0.09)).padding(EdgeInsets.init(top: 0, leading: 0, bottom: devHeight*0.008, trailing: 0)).multilineTextAlignment(.center)
                        }
                        if(i>1){
                            Text(colorResults[2].key).foregroundColor(Color.black).font(.custom("BodoniSvtyTwoSCITCTT-Book", size: devWidth*0.09)).padding(EdgeInsets.init(top: 0, leading: 0, bottom: devHeight*0.008, trailing: 0)).multilineTextAlignment(.center)
                        }
                        
                    }.padding(EdgeInsets.init(top: devHeight*0.10, leading: devWidth*0.05, bottom: devHeight*0.01, trailing: devWidth*0.05)).multilineTextAlignment(.center)
                    
                    
                    Spacer()
                    
                    VStack{
                        Button(title: "Show next color",
                               backgroundColor: Color.pink, isTapped: $buttTapResults).onTapGesture {
                            
                            i+=1
                            
                        }
                        
                        Button(title: "Restart Quiz",
                               backgroundColor: Color.pink, isTapped: $buttTapResults).onTapGesture {
                            viewModel.resetQuiz()
                            showHome = true
                            
                        }
                    }.padding(EdgeInsets.init(top: 0, leading: 0, bottom: devHeight*0.07, trailing: 0))
                    
                    
                    
                }
                else{
                    HomeView(viewModel: viewModel)
                }
            }
        //}
    }
    
}
