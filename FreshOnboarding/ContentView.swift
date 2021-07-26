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
    @Binding var isUrgentHelpShowing: Bool
    
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
                        Button(action: {emergencyHelp()}, label: {
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
                        Text("Waiting in the ").bold() +
                            Text("Emergency Department? ").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) +
                            Text("\nWe're ").bold() +
                            Text("Here to help").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size : 18))
                    .multilineTextAlignment(.center)
                    
                    VStack{
                        HStack {
                            Button(action: {self.tabSelection = 2}, label: {
                                Text("Overview")
                                    // .fontWeight(.light)
                                    .padding()
                                    .multilineTextAlignment(.center)
                                    .frame(width: 150, height: 100)
                                    .background(Color.blue.opacity(0.27))
                                    .cornerRadius(12)
                                    .padding(.horizontal)
                            })
                            Button(action: {emergencyHelp()}, label: {
                                Text("People")
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
                        HStack {
                            Button(action: {self.tabSelection = 2}, label: {
                                Text("Places")
                                    // .fontWeight(.light)
                                    .padding()
                                    .multilineTextAlignment(.center)
                                    .frame(width: 150, height: 100)
                                    .background(Color.blue.opacity(0.27))
                                    .cornerRadius(12)
                                    .padding(.horizontal)
                            })
                            Button(action: {emergencyHelp()}, label: {
                                Text("Procedures")
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
                    }
                    
                    
//                    Button(action: {goWalkthrough()}, label: {
//                        ZStack{
////                            Image("walkthrough1")
////                                .resizable()
////                                .aspectRatio(contentMode: .fit)
////                                .frame(width: 300)
////                                .opacity(0.33)
//                            Text("Emergency Department Walkthrough")
//                                .fontWeight(.heavy)
//                                .padding()
//                                .multilineTextAlignment(.center)
//                                .frame(width: 340, height: 200)
//                                .background(Color.blue.opacity(0.5))
//                                .cornerRadius(12)
//                                .padding(.horizontal)
//                        }
//                    })
                    Spacer()
                    Spacer()
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

struct NotesView: View {
    @Binding var isUrgentHelpShowing: Bool
    @Binding var isWalkthroughShowing: Bool
    @State var reason = ""
    @State var doctor = ""


    var body: some View {
        NavigationView{
            ZStack {
                GradientView(isWalkthroughShowing: $isWalkthroughShowing)

                VStack{
                    Form {
                        Section {
                            TextField("Doctor", text: $doctor)
                            TextField("Reason of appointment", text: $reason)
                            
                        }
                    }.onAppear() {
                        UITableView.appearance().backgroundColor = UIColor.clear
                        UITableViewCell.appearance().backgroundColor = UIColor.clear
                    }
                }
//                        .listRowBackground(Color.clear)
//                }.onAppear() {
//                    UITableView.appearance().backgroundColor = UIColor.clear
//                    UITableViewCell.appearance().backgroundColor = UIColor.clear
//                }
                
                .navigationTitle("Notes")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: { emergencyHelp() }, label: {
                            Text("Help")
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
                    HStack{
                        NavigationLink(destination: MHResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                            VStack {
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 60, height: 55)
                                //                                .renderingMode(.original)
                                Text("Mental health resources")
                            }
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 175, height: 200)
                            .background(Color.blue.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.all, 2)
                        }
                            NavigationLink(destination: MTResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                                VStack {
                                    Image(systemName: "sun.min")
                                        .resizable()
                                        .frame(width: 60, height: 55)
                                        // .renderingMode(.original)
                                    Text("Mindfullness tools")
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
                        NavigationLink(destination: MHResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                            VStack {
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 60, height: 55)
                                //                                .renderingMode(.original)
                                Text("Mental health resources")
                            }
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 175, height: 200)
                            .background(Color.blue.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.all, 2)
                        }
                            NavigationLink(destination: MTResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                                VStack {
                                    Image(systemName: "sun.min")
                                        .resizable()
                                        .frame(width: 60, height: 55)
                                        // .renderingMode(.original)
                                    Text("Mindfullness tools")
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
                        NavigationLink(destination: MHResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                            VStack {
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 60, height: 55)
                                //                                .renderingMode(.original)
                                Text("Mental health resources")
                            }
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 175, height: 200)
                            .background(Color.blue.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.all, 2)
                        }
                            NavigationLink(destination: MTResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                                VStack {
                                    Image(systemName: "sun.min")
                                        .resizable()
                                        .frame(width: 60, height: 55)
                                        // .renderingMode(.original)
                                    Text("Mindfullness tools")
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
    
    var body: some View {
        NavigationView{
            ZStack {
                GradientView(isWalkthroughShowing: $isWalkthroughShowing)
                VStack{
                    HStack{
                        NavigationLink(destination: MHResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                            VStack {
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 60, height: 55)
                                //                                .renderingMode(.original)
                                Text("Mental health resources")
                            }
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 150, height: 100)
                            .background(Color.blue.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.all)
                        }
                            NavigationLink(destination: MTResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                                VStack {
                                    Image(systemName: "sun.min")
                                        .resizable()
                                        .frame(width: 60, height: 55)
                                        // .renderingMode(.original)
                                    Text("Mindfullness tools")
                                }
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 150, height: 100)
                                .background(Color.blue.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.all)
                            }
                        }
                    HStack{
                        NavigationLink(destination: MHResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                            VStack {
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 60, height: 55)
                                //                                .renderingMode(.original)
                                Text("Mental health resources")
                            }
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 150, height: 100)
                            .background(Color.blue.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.all)
                        }
                            NavigationLink(destination: MTResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                                VStack {
                                    Image(systemName: "sun.min")
                                        .resizable()
                                        .frame(width: 60, height: 55)
                                        // .renderingMode(.original)
                                    Text("Mindfullness tools")
                                }
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 150, height: 100)
                                .background(Color.blue.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.all)
                            }
                        }
                    HStack{
                        NavigationLink(destination: MHResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                            VStack {
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 60, height: 55)
                                //                                .renderingMode(.original)
                                Text("Mental health resources")
                            }
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 150, height: 100)
                            .background(Color.blue.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.all)
                        }
                            NavigationLink(destination: MTResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                                VStack {
                                    Image(systemName: "sun.min")
                                        .resizable()
                                        .frame(width: 60, height: 55)
                                        // .renderingMode(.original)
                                    Text("Mindfullness tools")
                                }
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 150, height: 100)
                                .background(Color.blue.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.all)
                            }
                        }
                    HStack{
                        NavigationLink(destination: MHResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                            VStack {
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 60, height: 55)
                                //                                .renderingMode(.original)
                                Text("Mental health resources")
                            }
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: 150, height: 100)
                            .background(Color.blue.opacity(0.27))
                            .cornerRadius(12)
                            .padding(.all)
                        }
                            NavigationLink(destination: MTResourcesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing, show: false)) {
                                VStack {
                                    Image(systemName: "sun.min")
                                        .resizable()
                                        .frame(width: 60, height: 55)
                                        // .renderingMode(.original)
                                    Text("Mindfullness tools")
                                }
                                .padding()
                                .multilineTextAlignment(.center)
                                .frame(width: 150, height: 100)
                                .background(Color.blue.opacity(0.27))
                                .cornerRadius(12)
                                .padding(.all)
                            }
                        }
                    }
            }
            .navigationTitle("Tools")
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


struct MHResourcesView: View {
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
                ForEach(mhresources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: mhresources[index].title, description: mhresources[index].description, website: mhresources[index].website) }, label: {
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
        .navigationTitle("Mental Health")
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

struct AnxietyView: View {
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
                ForEach(anxResources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: anxResources[index].title, description: anxResources[index].description, website: anxResources[index].website) }, label: {
                        VStack(alignment: .leading) {
                                Label(anxResources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(anxResources[index].website, systemImage: "link")
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
        .navigationTitle("Anxiety")
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

struct DepressionView: View {
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
                ForEach(depResources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: depResources[index].title, description: depResources[index].description, website: depResources[index].website) }, label: {
                        VStack(alignment: .leading) {
                                Label(depResources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(depResources[index].website, systemImage: "link")
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
        .navigationTitle("Depression")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { emergencyHelp() }, label: {
                    Text("Need help now?")
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

struct BullyingView: View {
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
                ForEach(bulResources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: bulResources[index].title, description: bulResources[index].description, website: bulResources[index].website) }, label: {
                        VStack(alignment: .leading) {
                                Label(bulResources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(bulResources[index].website, systemImage: "link")
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
        .navigationTitle("Bullying")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { emergencyHelp() }, label: {
                    Text("Need help now?")
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

struct GriefView: View {
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
                ForEach(griefResources.indices, id: \.self) { index in
                    
                    Button(action: { emergencyShow(title: griefResources[index].title, description: griefResources[index].description, website: griefResources[index].website) }, label: {
                        VStack(alignment: .leading) {
                                Label(griefResources[index].title, systemImage: "house").font(.headline)
                                Divider()
                                Label(griefResources[index].website, systemImage: "link")
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
        .navigationTitle("Grief")
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
                    Text("Need help now?")
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
                WalkthroughView(isWalkthroughShowing: $isWalkthroughShowing)
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
                    NotesView(isUrgentHelpShowing: $isUrgentHelpShowing, isWalkthroughShowing: $isWalkthroughShowing)
                        .tabItem {
                            Image(systemName: "square.and.pencil")
                            Text("Notes")
                        }.tag(4)
                    
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
