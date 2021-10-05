//
//  ContentView.swift
//  iOsCookieClicker
//
//  Created by Pāvels Garklāvs on 05/10/2021.
//

import SwiftUI

struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 2 : 1)
    }
}

struct ContentView: View {
    
    @State private var count: Int = 0

    var body: some View {
        ZStack {
            Color.orange
                .blur(radius: 25)
                .ignoresSafeArea(edges: .all)
            
            VStack {
                
                Text("Cookie Clicker!")
                    .foregroundColor(Color.yellow)
                    .font(.system(size: 80))
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.top, 40.0)
                    .hoverEffect(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Button {
                    count += 1
                } label: {
                    Image("cookie")
                        .resizable()
                        .frame(
                            width: 200.0,
                            height: 200.0
                        )
                        .scaledToFit()
                        .padding()
                }.buttonStyle(ScaleButtonStyle())
                
                Text("Times Clicked")
                    .foregroundColor(Color.white)
                    .font(.system(size: 48))
                    .padding(.top, 80.0)
                Text("\(String(count))")
                    .font(.system(size: 60))
                    .foregroundColor(Color.white)

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
