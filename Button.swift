//
//  Button.swift
//  NailColor
//
//  Created by Madeline Skeel on 2/25/23.
//

import Foundation
import SwiftUI

struct Button: View{
    let title: String
    let backgroundColor: Color

    @Binding var isTapped: Bool
 
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
    
    
    var body: some View {
        /*Text(title)
            .font(.custom("Optima-Italic", size: proxy.size.height/18))
            .fontWeight(.regular)
            .frame(width: proxy.size.width, height: proxy.size.height/15)
            //.background(backgroundColor.opacity(0.2))
            .background(isTapped ? backgroundColor.opacity(0.15) : backgroundColor.opacity(0.35))
            .foregroundColor(.black)
            .cornerRadius(20)*/
            
        
        Text(title)
            .font(.custom("BodoniSvtyTwoSCITCTT-Book", size: devWidth*0.07))
            .fontWeight(.regular)
            .frame(width: devWidth*0.9, height: devHeight*0.055)
            //.background(backgroundColor.opacity(0.2))
            .background(isTapped ? backgroundColor.opacity(0.1) : backgroundColor.opacity(0.3))
            .foregroundColor(.black)
            .cornerRadius(20).multilineTextAlignment(.center)
            
        
    }
        
}
