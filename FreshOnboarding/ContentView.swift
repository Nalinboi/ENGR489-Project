//
//  ContentView.swift
//  DraftClearSkies5
//
//  Created by simon on 21/06/21.
//

import SwiftUI

struct HomeView: View {
    @Binding var tabSelection: Int

    var body: some View {
        NavigationView{
            ZStack {
                Color.red
                VStack {
                    Spacer()
                    HStack {
                        Button(action: {self.tabSelection = 2}, label: {
                            Text("Need further resources?")
                                .fontWeight(.heavy)
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 150, height: 100)
                                .background(Color.black.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.horizontal)
                        })
                        Button(action: {self.tabSelection = 3}, label: {
                            Text("Need to take notes?")
                                .fontWeight(.heavy)
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 150, height: 100)
                                .background(Color.black.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.horizontal)
                        })
                    }
                    
                    .foregroundColor(.white)
                    .padding()
                    
                    Button(action: {self.tabSelection = 3}, label: {
                        Text("Need to take notes?")
                            .fontWeight(.heavy)
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 340, height: 200)
                            .background(Color.black.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.horizontal)
                    })
                    Spacer()
                }
            }
            .navigationTitle("Clear Skies")
        }
    }
}

struct NotesView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Hello World")
            }
        }
        .navigationTitle("Notes")
        
    }
}


//NavigationLink(destination: BirgurView().navigationTitle("lmao")) {
//    Text("Do Something")
//}
//struct BirgurView: View {
//    var body: some View {
//        Text("birger")
//    }
//}

struct ExampleryView: View {
    @State var firstView = true
    @State var appeared: Double = 0
    var body: some View {
        VStack{
            if firstView{
                VStack{
                    Button(action: {
                        self.firstView = false
                    }){
                        Text("change view")
                    }
                }
            }
            else{
                VStack{
                    Text("Hello, World!")
                }
                .opacity(appeared)
                .animation(Animation.easeInOut(duration: 3.0), value: appeared)
                .onAppear {self.appeared = 1.0}
                .onDisappear {self.appeared = 0.0}
            }
        }

    }
    
}


struct ContentView: View {
    
    @State private var tabSelection = 1
    @State private var isWalkthroughShowing = false
    
    var body: some View {
        Group{
            if isWalkthroughShowing {
                WalkthroughView(isWalkthroughShowing: $isWalkthroughShowing)
            } else {
                TabView(selection: $tabSelection) {  // Need to put this in a struct
                    HomeView(tabSelection: $tabSelection)
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }.tag(1)
                    ExampleryView()
                        .tabItem {
                            Image(systemName: "heart")
                            Text("Resources")
                        }.tag(2)
                    NotesView()
                        .tabItem {
                            Image(systemName: "square.and.pencil")
                            Text("Notes")
                        }.tag(3)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
