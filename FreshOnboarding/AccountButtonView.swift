//
//  AccountButtonView.swift
//  FreshOnboarding
//
//  Created by simon on 23/06/21.
//

import SwiftUI

struct AccountButtonView: View {
    @Binding var isWalkthroughShowing: Bool
    
    var body: some View {
        Button(action: { dismiss() }, label: {
            Text("Got everything? Go back")
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
