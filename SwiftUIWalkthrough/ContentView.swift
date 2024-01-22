//
//  ContentView.swift
//  SwiftUIWalkthrough
//
//  Created by shark boy on 1/18/24.
//

import SwiftUI

enum Sport: String {
    case golf, quidditch, baseketBall, basketWeaving, nothing
    
}

struct ContentView1: View {
    let buttonSize: CGFloat = 100
    
    @State var sport: Sport  = .nothing
    @State var submitToggle = false
    
    var body: some View {
        VStack(spacing: 70) {
        
            Text("Favorite Sport")
                .font(.largeTitle)
                .frame(width: 300)
                .padding()
        HStack {
            VStack {
                Button {
                    sport = .golf
                } label: {
                    Text("Golf")
                        .frame(width: buttonSize, height: buttonSize)
                     
                }
                .tint(sport != .golf ? Color.green.opacity(0.5) : Color.green)
                Button {
                    sport = .baseketBall
                    
                } label: {
                    Text("Baseket Ball")
                        .frame(width: buttonSize, height: buttonSize)
                        
                }
                .tint(sport != .baseketBall ? Color.green.opacity(0.5) : Color.green)

                
            }
            
            VStack {
                Button {
                    sport = .quidditch
                } label: {
                    Text("Quidditch")
                        .frame(width: buttonSize, height: buttonSize)
                        
                }
                .tint(sport != .quidditch ? Color.green.opacity(0.5) : Color.green)
                
                Button {
                    sport = .basketWeaving
                    
                } label: {
                    Text("Basket Weaving")
                        .frame(width: buttonSize, height: buttonSize)
                        
                    }
                .tint(sport != .basketWeaving ? Color.green.opacity(0.5) : Color.green)
                    

                }
                
                
            }


            
        }
//        .tint(Color.green)
        .buttonStyle(.borderedProminent)

        VStack {
            if submitToggle {
                Text("You chose \(sport.rawValue)")
            }
            Button(action: {
                submitToggle.toggle()
            }, label: {
                Text("submit")
                    .frame(width: 200)
            })
            .buttonStyle(.borderedProminent)
        }
                
    }
    
}




#Preview {
        ContentView1()
}


//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("important text")
//                .font(.largeTitle)
//            Spacer()
//            Text("summer or winter?")
//            HStack {
//                Button(action: { },
//                       label: {
//                    Text("Summer")
//                        .padding()
//                        .frame(width: 150)
//                }
//                )
//                Button(action: { },
//                       label: {
//                    Text("Winter")
//                        .padding()
//                        .frame(width: 150)
//                }
//                )
//                
//            }
//
//
//            .foregroundStyle(.white)
//            .buttonStyle(.borderedProminent) //
//            
//            
//            Text("lightmode or dark mode?")
//            HStack {
//                Button(action: { },
//                       label: {
//                    Text("Light Mode")
//                        .padding()
//                        .frame(width: 150)
//                }
//                )
//                Button(action: { },
//                       label: {
//                    Text("Dark Mode")
//                        .padding()
//                        .frame(width: 150)
//                }
//                )
//                
//            }
//            
//            .foregroundStyle(.white)
//            .buttonStyle(.borderedProminent)
//            
//            Spacer()
//        }
//        .padding()
//    }
//}
