//
//  WalkthroughView.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import SwiftUI

struct WalkthroughView: View {
    @State private var selection = 0
    @Binding var isWalkthroughShowing: Bool
     
    var body: some View {
        ZStack{
            GradientView()
            VStack {
                PageTabView(selection: $selection)
                ButtonsView(selection: $selection)
                AccountButtonView(isWalkthroughShowing: $isWalkthroughShowing)
            }
        }
        .transition(.move(edge: .bottom))
    }
}

struct WalkthroughView_Previews: PreviewProvider {
    static var previews: some View {
        WalkthroughView(isWalkthroughShowing: Binding.constant(true))
    }
}
 
