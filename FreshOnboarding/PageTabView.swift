//
//  PageTabView.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import SwiftUI

struct PageTabView: View {
    @Binding var selection: Int
    let givenTabs: Array<Page>

    var body: some View {
        TabView(selection: $selection) {
            ForEach(givenTabs.indices, id: \.self) { index in
                TabDetailsView(index: index, givenTabs: givenTabs)
            }
        }.tabViewStyle(PageTabViewStyle())
        
    }
}

struct PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientView(isWalkthroughShowing: Binding.constant(true))
            PageTabView(selection: Binding.constant(0), givenTabs: overview)
        }
        
    }
}
