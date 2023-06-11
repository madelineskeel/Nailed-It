//
//  QuestionText.swift
//  NailColor
//
//  Created by Madeline Skeel on 4/6/23.
//

import Foundation
import SwiftUI

struct QuestionText: View{
    let Question: String
    
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
        Text(Question).foregroundColor(Color.black).font(.custom("BodoniSvtyTwoSCITCTT-Book", size: devWidth*0.07)).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets.init(top: devHeight*0.03, leading: devWidth*0.07, bottom: 0, trailing: devWidth*0.02))
    }
}
