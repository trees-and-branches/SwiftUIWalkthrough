//
//  ContentView.swift
//  SwiftUIWalkthrough
//
//  Created by shark boy on 1/18/24.
//

import SwiftUI
enum Sport: String, CaseIterable {
    
    case golf, quidditch, baseketBall, basketWeaving, nothing
    
}

struct ContentView1: View {
    let buttonSize: CGFloat = 100
    @State var sports: [Sport] = Sport.allCases

    @State var submitToggle = false
    @State var selectedSport: Sport = .nothing
    
    var body: some View {
        VStack(spacing: 70) {
            
            Text("Favorite Sport")
                .font(.largeTitle)
                .frame(width: 300)
                .padding()
            VStack {
                HStack {
                    ForEach($sports[0...1], id: \.rawValue) { $sport in
                        SportButtonView(sport: $sport) { selectedSport = sport }
                                    .tint(sport != selectedSport ? Color.green.opacity(0.5) : Color.green)
                        
                    }
                }
                HStack {
                    ForEach($sports[2...3], id: \.rawValue) { $sport in
                        SportButtonView(sport: $sport) { selectedSport = sport }
                            .tint(sport != selectedSport ? Color.green.opacity(0.5) : Color.green)
                    }
                    
                }
            }
            
            
            VStack {
                if submitToggle {
                    Text("You chose \(selectedSport.rawValue) ")
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
}

    struct SportButtonView: View {
        @Binding var sport: Sport
        let onTap: () -> Void
        var body: some View {
            Button {
                onTap()
            } label: {
                Text(sport.rawValue)
                    .frame(width: 100, height: 100)
                
            }
            .buttonStyle(.borderedProminent)
            //            .tint(self.sport !=  ? Color.green.opacity(0.5) : Color.green)
        }
    }


#Preview {
ContentView1()
}
