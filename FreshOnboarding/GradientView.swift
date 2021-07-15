//
//  GradientView.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import SwiftUI

struct GradientView: View {
    @Binding var isWalkthroughShowing: Bool
    var body: some View {
        // Can get different colors by doing "Color(color literal)" and an option should show up
//        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6312997341, green: 0.9606612325, blue: 1, alpha: 1)), .white]),
//                       startPoint: .top, endPoint: .bottom).ignoresSafeArea()
//        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6312997341, green: 0.9606612325, blue: 1, alpha: 1)), .white]),
//                       startPoint: .top, endPoint: .bottom).ignoresSafeArea()
        
        Group {
            if isWalkthroughShowing {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.6312997341, green: 0.9606612325, blue: 1, alpha: 1))]),
                               startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            } else {
//                LinearGradient(gradient: Gradient(colors: [.white, Color(#colorLiteral(red: 0.6312997341, green: 0.9606612325, blue: 1, alpha: 1))]),
//                               startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                LinearGradient(gradient: Gradient(colors: [.white]),
                               startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            }
        }
        
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView(isWalkthroughShowing: Binding.constant(true))
    }
}
