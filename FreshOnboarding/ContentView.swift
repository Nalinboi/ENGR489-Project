//
//  ContentView.swift
//  DraftClearSkies5
//
//  Created by simon on 21/06/21.
//

import SwiftUI

struct HomeView: View {
        
    @Binding var tabSelection: Int
    @Binding var isWalkthroughShowing: Bool
    
    var body: some View {
        NavigationView{
            ZStack {
                GradientView(isWalkthroughShowing: $isWalkthroughShowing)
                VStack {
                    Text("Clear Skies")
                        .font(.system(size : 55, weight: .light))
                        .foregroundColor(.blue)
                    
                    
                    Spacer()
                    HStack {
                        Button(action: {self.tabSelection = 2}, label: {
                            Text("Need further resources?")
                                // .fontWeight(.light)
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 150, height: 100)
                                .background(Color.blue.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.horizontal)
                        })
                        Button(action: {self.tabSelection = 3}, label: {
                            Text("Need help now?")
                                // .fontWeight(.heavy)
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 150, height: 100)
                                .background(Color.blue.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.horizontal)
                        })
                    }
                    .foregroundColor(.black)
                    .padding()
                    
                    Spacer()
                    
                    Group {
                        Text("Are you ").bold() +
                            Text("currently waiting ").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) +
                            Text("at \n the ").bold() +
                            Text("Emergency Department?").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size : 18))
                    .multilineTextAlignment(.center)
                    
                    Button(action: {goWalkthrough()}, label: {
                        ZStack{
//                            Image("walkthrough1")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 300)
//                                .opacity(0.33)
                            Text("Emergency Department Walkthrough")
                                .fontWeight(.heavy)
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 340, height: 200)
                                .background(Color.blue.opacity(0.5))
                                .cornerRadius(12)
                                .padding(.horizontal)
                        }
                    })
                    Spacer()
                    Spacer()
                }
            }
        }
    }
    func goWalkthrough(){
        withAnimation {
            isWalkthroughShowing.toggle()
        }
    }
}

struct NotesView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool


    var body: some View {
        NavigationView{
            ZStack {
                GradientView(isWalkthroughShowing: $isWalkthroughShowing)

                VStack {
                    Text("Hello World")
                }
                .navigationTitle("Notes")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: { emergencyHelp() }, label: {
                            Text("Need help now?")
                        })
                    }
                }
            }
        }
    }
    func emergencyHelp(){
        withAnimation {
            isUrgentHelpShowing.toggle()
        }
    }
}

struct ResourcesView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var show = false
    
    var body: some View {
        NavigationView{
            ZStack {
                GradientView(isWalkthroughShowing: $isWalkthroughShowing)
                VStack{
                    NavigationLink(destination: MHResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                        VStack {
                            Image(systemName: "heart")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 120, height: 100)
                            Text("Mental health resources")
                        }
                        .padding()
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 200)
                        .background(Color.blue.opacity(0.27))
                        .cornerRadius(12)
                        .padding(.vertical)
                    }
                    NavigationLink(destination: MTResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                        VStack {
                            Image(systemName: "heart")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 120, height: 100)
                            Text("Mindfullness tools")
                        }
                        .padding()
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 200)
                        .background(Color.blue.opacity(0.27))
                        .cornerRadius(12)
                        .padding(.vertical)                    }
                }
            }
            .navigationTitle("Resources")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { emergencyHelp() }, label: {
                        Text("Need help now?")
                    })
                }
            }
        }
    }
    
    func emergencyShow(){
        withAnimation {
            show.toggle()
        }
    }
    
    func emergencyHelp(){
        withAnimation {
            isUrgentHelpShowing.toggle()
        }
    }
}


struct MHResourcesView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var show = false
    
    var body: some View {
        
        ZStack {
            GradientView(isWalkthroughShowing: $isWalkthroughShowing)
            
            List {
                ForEach(mhresources.indices, id: \.self) { index in
                    Button(action: { emergencyShow() }, label: {
                        VStack(alignment: .leading) {
                                Label(mhresources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(mhresources[index].website, systemImage: "link")
                            }
                        })
                        .padding()
                        .background(Color.secondary.opacity(0.25))
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    }.listRowBackground(Color.clear)
            }.onAppear() {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
            
            if self.show{
                GeometryReader{ geometry in
                    Menu().position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                }.background(
                    Color.black.opacity(0.65)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation{
                                self.show.toggle()
                            }
                        }
                )
            }
        
        }
        .navigationTitle("Mental Health")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { emergencyHelp() }, label: {
                    Text("Need help now?")
                })
            }
        }
    }
    
    func emergencyShow(){
        withAnimation {
            show.toggle()
        }
    }
    
    func emergencyHelp(){
        withAnimation {
            isUrgentHelpShowing.toggle()
        }
    }
}

struct MTResourcesView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var show = false
    
    var body: some View {
        
        ZStack {
            GradientView(isWalkthroughShowing: $isWalkthroughShowing)
            
            List {
                    ForEach(mindfulnessTools.indices, id: \.self) { index in
                        VStack(alignment: .leading) {
                            Label(mindfulnessTools[index].title, systemImage: "house").font(.headline)
                            Divider()
                            Label(mindfulnessTools[index].website, systemImage: "link")
                        }
                        .padding()
                        .background(Color.secondary.opacity(0.25))
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    }.listRowBackground(Color.clear)
            
            }.onAppear() {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
            
            if self.show{
                GeometryReader{ geometry in
                    Menu().position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                }.background(
                    Color.black.opacity(0.65)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation{
                                self.show.toggle()
                            }
                        }
                )
            }
        
        }
        .navigationTitle("Mindfulness Tools")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { emergencyHelp() }, label: {
                    Text("Need help now?")
                })
            }
        }
    }
    
    func emergencyShow(){
        withAnimation {
            show.toggle()
        }
    }
    
    func emergencyHelp(){
        withAnimation {
            isUrgentHelpShowing.toggle()
        }
    }
}

struct Menu : View {
    var body : some View{
        VStack(alignment: .leading, spacing: 15) {
            Button(action: {}) {
                HStack(spacing: 12){
                    Image("Home").renderingMode(.original).resizable().frame(width: 30, height: 26)
                    Text("Home").foregroundColor(.black)
                }
            }
            
            
        }.padding()
        .background(Color.white)
        .cornerRadius(15)
    }
}



struct ContentView: View {
    
    @State private var tabSelection = 1
    @State private var isWalkthroughShowing = false
    @State private var isUrgentHelpShowing = false
    
    var body: some View {
        Group{
            if isWalkthroughShowing {
                WalkthroughView(isWalkthroughShowing: $isWalkthroughShowing)
            } else if isUrgentHelpShowing {
                UrgentHelpView(isUrgentHelpShowing: $isUrgentHelpShowing)
            }
            else {
                TabView(selection: $tabSelection) {  // Need to put this in a struct
                    HomeView(tabSelection: $tabSelection, isWalkthroughShowing: $isWalkthroughShowing)
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }.tag(1)
                    ResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing)
                        .tabItem {
                            Image(systemName: "heart")
                            Text("Resources")
                        }.tag(2)
                    NotesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing)
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
