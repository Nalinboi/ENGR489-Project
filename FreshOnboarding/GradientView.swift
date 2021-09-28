//
//  GradientView.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import SwiftUI

struct GradientView: View {
    @Binding var isWalkthroughShowing: Bool
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Group {
            if isWalkthroughShowing {
                if colorScheme == .dark {
                    LinearGradient(gradient: Gradient(colors: [.black, Color(#colorLiteral(red: 0.6312997341, green: 0.9606612325, blue: 1, alpha: 1))]),
                                   startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                } else {
                    LinearGradient(gradient: Gradient(colors: [.white, Color(#colorLiteral(red: 0.6312997341, green: 0.9606612325, blue: 1, alpha: 1))]),
                                   startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                }
            } else {
                if colorScheme == .dark {
                    LinearGradient(gradient: Gradient(colors: [.black, Color(#colorLiteral(red: 0.6312997341, green: 0.9606612325, blue: 1, alpha: 1))]),
                                   startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                } else {
                    LinearGradient(gradient: Gradient(colors: [.white, Color(#colorLiteral(red: 0.6312997341, green: 0.9606612325, blue: 1, alpha: 1))]),
                                   startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                }
            }
        }
        
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView(isWalkthroughShowing: Binding.constant(true))
    }
}
