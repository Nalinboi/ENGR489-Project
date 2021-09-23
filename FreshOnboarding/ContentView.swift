//
//  ContentView.swift
//  DraftClearSkies5
//
//  Created by simon on 21/06/21.
//

import SwiftUI

var listToGive = tutorial


struct HomeView: View {
    @Binding var tabSelection: Int
    @Binding var isWalkthroughShowing: Bool
    @Binding var isUrgentHelpShowing: Bool
    
    var body: some View {
        NavigationView{
            ZStack {
                GradientView(isWalkthroughShowing: $isWalkthroughShowing)
                VStack {
                    Spacer()
                    Group {
                        Text("Waiting in the ").bold() +
                            Text("Emergency Department? ").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) +
                            Text("\nWe're ").bold() +
                            Text("here to help").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size : 18))
                    .multilineTextAlignment(.center)
                    
                    VStack{
                        HStack {
                            Button(action: {
                                listToGive = overview;
                                goWalkthrough()
                            }, label: {
                                Text("Emergency Department Overview")
                                    // .fontWeight(.heavy)
                                    .padding()
                                    .multilineTextAlignment(.center)
                                    .frame(width: 150, height: 100)
                                    .background(Color.blue.opacity(0.27))
                                    .cornerRadius(12)
                                    .padding(.all, 2)
                            })
                            Button(action: {
                                listToGive = people;
                                goWalkthrough()
                            }, label: {
                                Text("People")
                                    // .fontWeight(.heavy)
                                    .padding()
                                    .multilineTextAlignment(.center)
                                    .frame(width: 150, height: 100)
                                    .background(Color.blue.opacity(0.27))
                                    .cornerRadius(12)
                                    .padding(.all, 2)
                            })
                        }
                        .foregroundColor(.blue)
                        .padding(.all, 2)
                        HStack {
                            Button(action: {
                                listToGive = places;
                                goWalkthrough()
                            }, label: {
                                Text("Places")
                                    // .fontWeight(.light)
                                    .padding()
                                    .multilineTextAlignment(.center)
                                    .frame(width: 150, height: 100)
                                    .background(Color.blue.opacity(0.27))
                                    .cornerRadius(12)
                                    .padding(.all, 2)
                            })
                            Button(action: {
                                listToGive = procedures;
                                goWalkthrough()
                            }, label: {
                                Text("Procedures")
                                    // .fontWeight(.heavy)
                                    .padding()
                                    .multilineTextAlignment(.center)
                                    .frame(width: 150, height: 100)
                                    .background(Color.blue.opacity(0.27))
                                    .cornerRadius(12)
                                    .padding(.all, 2)
                            })
                        }
                        .foregroundColor(.blue)
                        .padding(.all, 2)
                    }
                    Spacer()
                    Group {
                        Text("Need a ").bold() +
                            Text("reminder ").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) +
                            Text("on how the app works?\n Here's a quick ").bold() +
                            Text("tutorial").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size : 18))
                    .multilineTextAlignment(.center)
                    Button(action: {
                        listToGive = tutorial;
                        goWalkthrough()
                    }, label: {
                        Text("App walkthrough")
                            // .fontWeight(.heavy)
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 150, height: 100)
                            .background(Color.blue.opacity(0.27))
                            .foregroundColor(.blue)
                            .cornerRadius(12)
                            .padding(.all, 2)
                    })
                    Spacer()
                }
            }
            .navigationTitle("Home")
            .foregroundColor(Color.black)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { emergencyHelp() }, label: {
                        Text("Help")
                    })
                }
            }
        }
    }
    func emergencyHelp(){
        withAnimation {
            isUrgentHelpShowing.toggle()
        }
    }
    func goWalkthrough(){
        withAnimation {
            isWalkthroughShowing.toggle()
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
                    HStack{
                        NavigationLink(destination: GeneralResourceView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                            VStack {
                                Image("mental_health")
                                    .resizable()
                                    .frame(width: 60, height: 55)
                                //                                .renderingMode(.original)
                                Text("General")
                            }
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 175, height: 200)
                            .background(Color.blue.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.all, 2)
                        }
                            NavigationLink(destination: AnxietyDepressionView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                                VStack {
                                    Image("worried")
                                        .resizable()
                                        .frame(width: 60, height: 55)
                                        // .renderingMode(.original)
                                    Text("Anxiety / Depression")
                                }
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 175, height: 200)
                                .background(Color.blue.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.all, 2)
                            }
                        }
                    HStack{
                        NavigationLink(destination: YouthView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                            VStack {
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 60, height: 55)
                                //                                .renderingMode(.original)
                                Text("Youth")
                            }
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 175, height: 200)
                            .background(Color.blue.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.all, 2)
                        }
                            NavigationLink(destination: IdentityView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                                VStack {
                                    Image(systemName: "person")
                                        .resizable()
                                        .frame(width: 60, height: 55)
                                        // .renderingMode(.original)
                                    Text("Identity")
                                }
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 175, height: 200)
                                .background(Color.blue.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.all, 2)
                            }
                        }
                    HStack{
                        NavigationLink(destination: FamilyFriendsView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                            VStack {
                                Image(systemName: "person.3")
                                    .resizable()
                                    .frame(width: 100, height: 50)
                                //                                .renderingMode(.original)
                                Text("Family / Friends")
                            }
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 175, height: 200)
                            .background(Color.blue.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.all, 2)
                        }
                            NavigationLink(destination: HelplinesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                                VStack {
                                    Image("phone")
                                        .resizable()
                                        .frame(width: 60, height: 55)
                                        // .renderingMode(.original)
                                    Text("Helplines")
                                }
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 175, height: 200)
                                .background(Color.blue.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.all, 2)
                            }
                        }
                    }
            }
            .navigationTitle("Resources")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { emergencyHelp() }, label: {
                        Text("Help")
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

struct ToolsView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var show = false
    
    @State var title = ""
    @State var description = ""
    @State var website = ""
    
    var body: some View {
        NavigationView{
            MTResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false, title: "", description: "", website: "")
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

struct GeneralResourceView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var show = false
    
    @State var title = ""
    @State var description = ""
    @State var website = ""

    
    var body: some View {
        ZStack {
            GradientView(isWalkthroughShowing: $isWalkthroughShowing)
            
            List {
                ForEach(generalResources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: generalResources[index].title, description: generalResources[index].description, website: generalResources[index].website) }, label: {
                        VStack(alignment: .leading) {
                                Label(generalResources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(generalResources[index].website, systemImage: "link")
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
                    Menu(title: title, description: description, website: website).position(x: geometry.size.width / 2, y: geometry.size.height / 2)
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
        .navigationTitle("General")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { emergencyHelp() }, label: {
                    Text("Help")
                })
            }
        }
    }
    
    func emergencyShow(title: String, description: String, website: String){
        self.title = title
        self.description = description
        self.website = website
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

struct AnxietyDepressionView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var show = false
    
    @State var title = ""
    @State var description = ""
    @State var website = ""

    
    var body: some View {
        ZStack {
            GradientView(isWalkthroughShowing: $isWalkthroughShowing)
            
            List {
                ForEach(anxdepResources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: anxdepResources[index].title, description: anxdepResources[index].description, website: anxdepResources[index].website) }, label: {
                        VStack(alignment: .leading) {
                                Label(anxdepResources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(anxdepResources[index].website, systemImage: "link")
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
                    Menu(title: title, description: description, website: website).position(x: geometry.size.width / 2, y: geometry.size.height / 2)
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
        .navigationTitle("Anxiety / Depression")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { emergencyHelp() }, label: {
                    Text("Help")
                })
            }
        }
    }
    
    func emergencyShow(title: String, description: String, website: String){
        self.title = title
        self.description = description
        self.website = website
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

struct YouthView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var show = false
    
    @State var title = ""
    @State var description = ""
    @State var website = ""

    
    var body: some View {
        ZStack {
            GradientView(isWalkthroughShowing: $isWalkthroughShowing)
            
            List {
                ForEach(youthResources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: youthResources[index].title, description: youthResources[index].description, website: youthResources[index].website) }, label: {
                        VStack(alignment: .leading) {
                                Label(youthResources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(youthResources[index].website, systemImage: "link")
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
                    Menu(title: title, description: description, website: website).position(x: geometry.size.width / 2, y: geometry.size.height / 2)
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
        .navigationTitle("Youth")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { emergencyHelp() }, label: {
                    Text("Help")
                })
            }
        }
    }
    
    func emergencyShow(title: String, description: String, website: String){
        self.title = title
        self.description = description
        self.website = website
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

struct HelplinesView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var show = false
    
    @State var title = ""
    @State var description = ""
    @State var website = ""

    
    var body: some View {
        ZStack {
            GradientView(isWalkthroughShowing: $isWalkthroughShowing)
            
            List {
                ForEach(helplinesResources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: helplinesResources[index].title, description: helplinesResources[index].description, website: helplinesResources[index].website) }, label: {
                        VStack(alignment: .leading) {
                                Label(helplinesResources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(helplinesResources[index].website, systemImage: "link")
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
                    Menu(title: title, description: description, website: website).position(x: geometry.size.width / 2, y: geometry.size.height / 2)
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
        .navigationTitle("Youth")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { emergencyHelp() }, label: {
                    Text("Help")
                })
            }
        }
    }
    
    func emergencyShow(title: String, description: String, website: String){
        self.title = title
        self.description = description
        self.website = website
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

struct IdentityView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var show = false
    
    @State var title = ""
    @State var description = ""
    @State var website = ""

    
    var body: some View {
        ZStack {
            GradientView(isWalkthroughShowing: $isWalkthroughShowing)
            
            List {
                ForEach(identityResources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: identityResources[index].title, description: identityResources[index].description, website: identityResources[index].website) }, label: {
                        VStack(alignment: .leading) {
                                Label(identityResources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(identityResources[index].website, systemImage: "link")
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
                    Menu(title: title, description: description, website: website).position(x: geometry.size.width / 2, y: geometry.size.height / 2)
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
        .navigationTitle("Identity")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { emergencyHelp() }, label: {
                    Text("Help")
                })
            }
        }
    }
    
    func emergencyShow(title: String, description: String, website: String){
        self.title = title
        self.description = description
        self.website = website
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

struct FamilyFriendsView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var show = false
    
    @State var title = ""
    @State var description = ""
    @State var website = ""

    
    var body: some View {
        ZStack {
            GradientView(isWalkthroughShowing: $isWalkthroughShowing)
            
            List {
                ForEach(famfriendsResources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: famfriendsResources[index].title, description: famfriendsResources[index].description, website: famfriendsResources[index].website) }, label: {
                        VStack(alignment: .leading) {
                                Label(famfriendsResources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(famfriendsResources[index].website, systemImage: "link")
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
                    Menu(title: title, description: description, website: website).position(x: geometry.size.width / 2, y: geometry.size.height / 2)
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
        .navigationTitle("Identity")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { emergencyHelp() }, label: {
                    Text("Help")
                })
            }
        }
    }
    
    func emergencyShow(title: String, description: String, website: String){
        self.title = title
        self.description = description
        self.website = website
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
    
    @State var title = ""
    @State var description = ""
    @State var website = ""
    
    var body: some View {
        
        ZStack {
            GradientView(isWalkthroughShowing: $isWalkthroughShowing)
            
            List {
                    ForEach(mindfulnessTools.indices, id: \.self) { index in
                        Button(action: { emergencyShow(title: mindfulnessTools[index].title, description: mindfulnessTools[index].description, website: mindfulnessTools[index].website) }, label: {
                            VStack(alignment: .leading) {
                                    Label(mindfulnessTools[index].title, systemImage: "house").font(.headline)
                                    Divider()
                                    Label(mindfulnessTools[index].website, systemImage: "link")
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
                    Menu(title: title, description: description, website: website).position(x: geometry.size.width / 2, y: geometry.size.height / 2)
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
                    Text("Help")
                })
            }
        }
    }
    
    func emergencyShow(title: String, description: String, website: String){
        self.title = title
        self.description = description
        self.website = website
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
    @State var title: String
    @State var description: String
    @State var website: String
    var body : some View{
        VStack(alignment: .leading, spacing: 15) {
            Button(action: {}) {
                VStack(spacing: 12){
                    Text(title).foregroundColor(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                        .font(.system(size : 40, weight: .heavy))
                        .multilineTextAlignment(.leading)

                    Text(description).foregroundColor(Color(#colorLiteral(red: 0.1264723241, green: 0.3532237411, blue: 0.5133422613, alpha: 1)))
                        .font(.system(size : 20, weight: .light))
                        .multilineTextAlignment(.leading)
                    Text("Click to visit " + website).foregroundColor(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                        .font(.system(size : 14, weight: .light))
                        .underline()
                        .multilineTextAlignment(.leading)
                }
            }
            
            
        }.padding()
        .frame(width: 340, height: 300)
        .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
        .cornerRadius(15)
    }
}



struct ContentView: View {
    
    @State private var tabSelection = 1
    @State private var isWalkthroughShowing = true
    @State private var isUrgentHelpShowing = false
    
    var body: some View {
        Group{
            if isWalkthroughShowing {
                WalkthroughView(isWalkthroughShowing: $isWalkthroughShowing, givenTabs: listToGive)
            } else if isUrgentHelpShowing {
                UrgentHelpView(isUrgentHelpShowing: $isUrgentHelpShowing)
            }
            else {
                TabView(selection: $tabSelection) {  // Need to put this in a struct
                    HomeView(tabSelection: $tabSelection, isWalkthroughShowing: $isWalkthroughShowing, isUrgentHelpShowing: $isUrgentHelpShowing)
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }.tag(1)
                    ResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing)
                        .tabItem {
                            Image(systemName: "heart")
                            Text("Resources")
                        }.tag(2)
                    ToolsView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing)
                        .tabItem {
                            Image(systemName: "lightbulb")
                            Text("Tools")
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
