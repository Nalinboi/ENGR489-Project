//
//  UrgentHelpView.swift
//  FreshOnboarding
//
//  Created by simon on 23/06/21.
//

import SwiftUI

struct UrgentHelpView: View {
    @Binding var isUrgentHelpShowing: Bool

    var body: some View {
        Text("Ahhhhh")
    }
}

struct UrgentHelpView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientView(isWalkthroughShowing: Binding.constant(false))
            UrgentHelpView(isUrgentHelpShowing: Binding.constant(true))
        }
        
    }
}
