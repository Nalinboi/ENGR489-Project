//
//  GradientView.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        // Can get different colors by doing "Color(color literal)" and an option should show up
//        [Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.6312997341, green: 0.9606612325, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8237851858, green: 1, blue: 0.8371191621, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]),
        
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.6312997341, green: 0.9606612325, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8237851858, green: 1, blue: 0.8371191621, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), .green]),
                       startPoint: .top, endPoint: .bottom).ignoresSafeArea()
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
