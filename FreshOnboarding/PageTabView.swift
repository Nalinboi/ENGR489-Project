//
//  PageTabView.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import SwiftUI

struct PageTabView: View {
    @Binding var selection: Int
     
    var body: some View {
        TabView(selection: $selection) {
            ForEach(tabs.indices, id: \.self) { index in
                TabDetailsView(index: index)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}

struct PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientView(isWalkthroughShowing: Binding.constant(true))
            PageTabView(selection: Binding.constant(0))
        }
        
    }
}
