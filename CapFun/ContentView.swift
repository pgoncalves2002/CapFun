//
//  ContentView.swift
//  CapFun
//
//  Created by Pedro Gonçalves on 03/08/24.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var capMode = 0
    @State var toCopy = ""
    var body: some View {
        
        VStack{
            Spacer()
            if capMode == 1 {
                Text(text.uppercased())
                    .font(.largeTitle)
                
            } else if capMode == 2 {
                Text(text.lowercased())
                    .font(.largeTitle)
                
            } else if capMode == 3 {
                Text(text.capitalized)
                    .font(.largeTitle)
                
                
            }else {
                Text(text)
                    .font(.largeTitle)
                
            }
            Spacer()
            TextField("Enter text here", text: $text)
                .padding()
                .background(Color(.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
            HStack{
                Button(action: {
                    text = ""
                }){
                    CustomButtonView(title: "Clear Text", color: .red)
                }
                Button(action: {
                    if capMode == 1 {
                        copyToClipboard(text: text.uppercased())
                        
                        
                    } else if capMode == 2 {
                        copyToClipboard(text:text.lowercased())
                        
                    } else if capMode == 3 {
                        copyToClipboard(text:text.capitalized)
                        
                        
                    }else {
                        copyToClipboard(text: text)
                    }
                    
                }){
                    CustomButtonView(title: "Copy", color: .orange)
                }.padding()
            }
            HStack{
                Button(action: {
                    capMode = 1
                }){
                    CustomButtonView(title: "ALL CAPS", color: .purple)
                }
                Button(action: {
                    capMode = 2
                }){
                    CustomButtonView(title: "all lower", color: .blue)
                }
                Button(action: {
                    capMode = 3
                }){
                    CustomButtonView(title: "First Letter", color: .green)
                }
            }
            .padding()
        }
        .padding(15)
        Spacer()
    }
    
}
func copyToClipboard(text: String) {
    let pasteboard = UIPasteboard.general
    pasteboard.string = text
}
#Preview {
    ContentView()
}

