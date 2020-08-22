//
//  Story.swift
//  Gallery
//
//  Created by Emad Abdulrahim on 8/21/20.
//  Copyright © 2020 Emad Abdulrahim. All rights reserved.
//

import SwiftUI

struct TitleOverlay: View {
  var body: some View {
    ZStack {
      Text("Hi, I’m Emad — Product Designer").font(.largeTitle).fontWeight(.bold).padding(.leading)
    }
  }
}

struct Story: View {
  var intro = "I’m a Product Designer and Frontend Developer based in San Francisco. I specialize in user experience design, visual design, interaction design, and building products that are joyful to use."
  var introColor = Color(red: 138 / 255, green: 142 / 255, blue: 152 / 255)
  
  var body: some View {
    VStack {
      ZStack {
        Image("avatar").resizable().aspectRatio(contentMode: .fit).overlay(TitleOverlay(), alignment: .bottomLeading)
      }
      HStack {
        Text(intro).font(.system(size: 21)).fontWeight(.medium).foregroundColor(introColor).lineSpacing(4)
        
        Spacer()
      }
      .padding([.leading, .top])
      Spacer()
      HStack {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
          Spacer()
          Text("Say Hello").font(.headline).padding().foregroundColor(.black)
          Spacer()
        }.background(Color.white).cornerRadius(15)
      }
    .padding()
    }
    .background(Color.black.edgesIgnoringSafeArea(.all)).foregroundColor(.white)
  }
}

struct Story_Previews: PreviewProvider {
  static var previews: some View {
    Story()
  }
}
