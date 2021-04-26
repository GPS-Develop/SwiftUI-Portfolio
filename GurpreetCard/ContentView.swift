//
//  ContentView.swift
//  GurpreetCard
//
//  Created by Gurpreet Singh on 2021-04-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("gurpreet")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 105.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                    
                Text("Gurpreet Singh")
                    .font(Font.custom("Pacifico-Regular", fixedSize: 40))
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+ 123 456 7899", imageName: "phone.fill")
                InfoView(text: "gurpreet@email.com", imageName: "envelope.fill")
                
            }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice.init(rawValue: "iPhone 11"))
    }
}

