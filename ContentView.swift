import SwiftUI

struct ContentView: View{
    
    
    //var proxy: GeometryProxy
    
    var body: some View {
        //GeometryReader { geometry in
            ZStack{
                
                Text("")
                    .background().frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.pink.opacity(0.7))
                    .brightness(0.6)
                //VStack{
                    //Text("WHAT COLOR SHOULD YOU PAINT YOUR NAILS?").foregroundColor(Color.black).font(.custom("Optima-Italic", size: proxy.size.height/25))//.padding(EdgeInsets.init(top: 0, leading: proxy.size.width/100, bottom: 10, trailing: proxy.size.width/50))
                        //.multilineTextAlignment(.center)
                    
                    //Spacer()
                    
                    
                    
                    
                    HomeView(viewModel: Quiz())//.padding(EdgeInsets.init(top: proxy.size.height/30, leading: proxy.size.width/30, bottom: proxy.size.height/10, trailing: proxy.size.width/30))
                    
                    
                }
                
                
                
            }
            
            
            
            
        }
    
    
    

