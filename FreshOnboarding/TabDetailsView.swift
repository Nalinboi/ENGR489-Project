//
//  TabDetailsView.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import SwiftUI

struct TabDetailsView: View {
    let index: Int
    var body: some View {
        VStack {
            Image(tabs[index].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 560)
            
            Text(tabs[index].title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            
            Text(tabs[index].text)
                .padding()
        }
        .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0.5857753158, alpha: 1)))  // Not neccessary but its cool that it changes all text color
        
    }
}

struct TabDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientView()
            TabDetailsView(index: 0)
        }
        
    }
}
