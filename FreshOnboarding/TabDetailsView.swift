//
//  TabDetailsView.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import SwiftUI

struct TabDetailsView: View {
    let index: Int
    let givenTabs: Array<Page>
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            
            Image("administrator1")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(.blue)
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
            
            Spacer()
            
            Text(givenTabs[index].title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .frame(width:400)
            
            Text(givenTabs[index].text)
                .padding()
                .frame(width:400)
                .multilineTextAlignment(.center)
            Spacer()

        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

struct TabDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientView(isWalkthroughShowing: Binding.constant(true))
            TabDetailsView(index: 0, givenTabs: overview)
        }
        
    }
}
