//
//  ContentView.swift
//  frame1
//
//  Created by ITRS-1519 on 26/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                VStack(alignment: .leading, spacing: 12){
                    HStack(alignment: .firstTextBaseline, spacing: 16) {
                        Image("head").resizable().cornerRadius(25).frame(width: 32.0, height: 32.0)
                        HStack(alignment: .lastTextBaseline , spacing: -40) {
                            Text("Math Mindsets & Applications")
                                .font(.title)
                                .foregroundColor(Color("charcoal80"))
                                .font(.system(size: 24, weight: .bold))
                                .fontWeight(.bold)
                                .lineLimit(2)
                            Image("Info").resizable().cornerRadius(25).frame(width: 24.0, height: 24.0)
                        } .padding([.trailing], 20)
                        Button {
                            print("Right Arrow was tapped")
                        } label: {
                            Image("rightArrow").resizable().cornerRadius(25).frame(width: 24.0, height: 24.0)
                        }
                    }
                    Text("Comment")
                        .foregroundColor(Color("charcoal80"))
                        .font(.system(size: 14))
                        .multilineTextAlignment(.leading)
                        .padding([.bottom], 40)
                }
                Spacer()
                    .padding([.leading, .trailing], 28)
            }
        }
        .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(Color(.sRGB, red: 231/255, green: 224/255, blue: 255/255, opacity: 0.1), lineWidth: 1)
                )
        .padding(.init(top: 30, leading: 15, bottom:350 , trailing: 15))
        .shadow(radius: 0.5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
