//
//  AccountButtonView.swift
//  FreshOnboarding
//
//  Created by Nalin on 23/06/21.
//

import SwiftUI

struct AccountButtonView: View {
    @Binding var isWalkthroughShowing: Bool
    
    var body: some View {
        Button(action: { dismiss() }, label: {
            Text("Go home")
                .foregroundColor(.white)
                .underline()
        })
        
    }
    
    func dismiss(){
        withAnimation {
            isWalkthroughShowing.toggle()
        }
    }
}

struct AccountButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AccountButtonView(isWalkthroughShowing: Binding.constant(true))
    }
}
