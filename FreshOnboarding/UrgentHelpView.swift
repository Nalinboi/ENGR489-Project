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
        ZStack{
            GradientView(isWalkthroughShowing: $isUrgentHelpShowing)
            VStack {
                Spacer()
                Text("Emergency Contacts")
                    .padding()
                    .font(.system(size : 40, weight: .light))
                    .foregroundColor(.blue)
                    
                
                
                Group {
                    Text("If this is an ").bold() +
                        Text("emergency").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) +
                        Text(", please \n call ").bold() +
                        Text(" Te Heika").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .foregroundColor(.black)
                .font(.system(size : 18))
                .multilineTextAlignment(.center)
                
                Button(action: {}, label: {
                    VStack {
//                        Image(systemName: "heart")
//                            .renderingMode(.original)
//                            .resizable()
//                            .frame(width: 120, height: 100)
                        Text("0800 745 477").font(.system(size : 30, weight: .heavy)).padding()
                        Text("Call to get help now").font(.system(size : 20, weight: .light))

                        
                    }
                    .font(.system(size : 50))
                    .foregroundColor(.black)
                    .padding()
                    .multilineTextAlignment(.center)
                    .frame(width: 340, height: 200)
                    .background(Color.blue.opacity(0.5))
                    .cornerRadius(12)
                    .padding(.horizontal)
                        
                })
                Spacer()
                
                Group {
                    Text("Need someone to ").bold().foregroundColor(.black) +
                        Text("talk to").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) +
                        Text("? \n we're here").bold().foregroundColor(.black) +
                        Text(" to help").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .font(.system(size : 18))
                .multilineTextAlignment(.center)
                
                HStack {
                    Button(action: {}, label: {
                        VStack {
                            Image(systemName: "phone")
                                .resizable()
                                .frame(width: 40, height: 35)
                            Text("Call 0800 111 757").font(.system(size : 15, weight: .light))
                        }
                        .font(.system(size : 50))
                        .padding()
                        .multilineTextAlignment(.center)
                        .frame(width: 150, height: 100)
                        .background(Color.blue.opacity(0.27))
                        .cornerRadius(12)
                        .padding(.horizontal)
                            
                    })
                    Button(action: {}, label: {
                        VStack {
                            Image(systemName: "text.bubble")
                                .resizable()
                                .frame(width: 40, height: 35)
                            Text("Text 5626").font(.system(size : 15, weight: .light))
                        }
                        .font(.system(size : 50))
                        .padding()
                        .multilineTextAlignment(.center)
                        .frame(width: 150, height: 100)
                        .background(Color.blue.opacity(0.27))
                        .cornerRadius(12)
                        .padding(.horizontal)
                            
                    })
                }
            
                Spacer()
                Spacer()
                Button(action: { dismiss() }, label: {
                    Text("Go back home")
                        .foregroundColor(.white)
                        .underline()
                })
            }
            
        }
    }
    
    func dismiss(){
        withAnimation {
            isUrgentHelpShowing.toggle()
        }
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

