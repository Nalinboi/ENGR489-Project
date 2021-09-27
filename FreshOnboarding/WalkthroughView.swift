//
//  WalkthroughView.swift
//  FreshOnboarding
//
//  Created by Nalin on 22/06/21.
//

import SwiftUI

struct WalkthroughView: View {
    @State private var selection = 0
    @Binding var isWalkthroughShowing: Bool
    let givenTabs: Array<Page>

    var body: some View {
        ZStack{
            GradientView(isWalkthroughShowing: $isWalkthroughShowing)
            VStack {
                PageTabView(selection: $selection, givenTabs: givenTabs)
                ButtonsView(selection: $selection, givenTabs: givenTabs)
                AccountButtonView(isWalkthroughShowing: $isWalkthroughShowing)
            }
        }
        .transition(.move(edge: .bottom))
    }
}

struct WalkthroughView_Previews: PreviewProvider {
    static var previews: some View {
        WalkthroughView(isWalkthroughShowing: Binding.constant(true), givenTabs: tutorial)
    }
}
 
