//
//  ButtonsView.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import SwiftUI

struct ButtonsView: View {
    @Binding var selection: Int
    @Binding var isWalkthroughShowing: Bool

    let buttons = ["Previous", "Next"]
    let givenTabs: Array<Page>
    
    var body: some View {
        HStack {
            ForEach (buttons, id: \.self) { buttonLabel in
                Group {
                    if (selection == 0 && buttonLabel == "Previous") {
                        Button(action: {buttonAction(buttonLabel)}, label: {
                            Text("")
                                .fontWeight(.heavy)
                                .padding()
                                .frame(width: 150, height: 55)
                                .background(Color.black.opacity(0.0))
                                .cornerRadius(12)
                                .padding(.horizontal)
                        })
                    } else if (selection == givenTabs.count - 1 && buttonLabel == "Next") {
                        Button(action: {buttonAction(buttonLabel)}, label: {
                            Text("Finish")
                                .fontWeight(.heavy)
                                .padding()
                                .frame(width: 150, height: 55)
                                .background(Color.blue.opacity(0.5))
                                .cornerRadius(12)
                                .padding(.horizontal)
                        })
                    } else {
                        Button(action: {buttonAction(buttonLabel)}, label: {
                            Text(buttonLabel)
                                .fontWeight(.heavy)
                                .padding()
                                .frame(width: 150, height: 55)
                                .background(Color.black.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.horizontal)
                        })
                    }
                }
            }
        }
        .foregroundColor(.white)
        .padding()
    }
    
    func buttonAction(_ buttonLabel: String) {
        withAnimation {
            if buttonLabel == "Previous" && selection > 0 {
                selection -= 1
            } else if buttonLabel == "Next" && selection < givenTabs.count - 1 {
                selection += 1
            } else if (selection == givenTabs.count - 1) {
                dismiss()
            }
        }
    }
    
    func dismiss(){
        withAnimation {
            isWalkthroughShowing.toggle()
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView(selection: Binding.constant(0), isWalkthroughShowing: Binding.constant(true), givenTabs: overview)
    }
}

