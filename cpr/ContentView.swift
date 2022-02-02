//
//  ContentView.swift
//  cpr
//
//  Created by Chosum Tashi on 1/29/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @State private var isLoggedIn: Bool = false
    var body: some View {
        
        
//        NavigationView {
            
            VStack {
                Image("turtlerock")
                    .cornerRadius(1000)
                Spacer()
                VStack {
                    TextField("username", text: $username)
                    TextField("password", text: $password)
                
               
               
//                NavigationLink("login", destination: HomePage(name: username))
                    
                }
                .multilineTextAlignment(.center)
                
                        Button {
                            isLoggedIn = true
                        } label: {
                            if username.count > 0 && password.count > 0 {
                               
                            Text("Login")
                                        .animation(.easeInOut, value: 6)
                            
                            
                        
                    }
               
                
                }
                
                
                Spacer()

            }
            .fullScreenCover(isPresented: $isLoggedIn, onDismiss: didDissmiss, content: {HomePage(name: username)})

//        }
    }
    func didDissmiss() {
        print("dismiss")
    }
}


struct HomePage: View {
    let name: String
    let courses = data()
    @Environment(\.dismiss) var dismiss
    var body: some View {
       
        Text("List of courses")
            .font(.title)
        VStack {
            NavigationView {
            List(courses) { course in
               
                NavigationLink(course.name, destination: CourseInfoPage(course: course))
                    .edgesIgnoringSafeArea(.top)

            }
            
            }
            Button {
                dismiss()
            } label: {
                Text("dismiss")
            }
            Spacer()
        }
        
        
    }
}

struct CourseInfoPage: View {
   
    let course: Course
    
    var body: some View {
       
    
        Image(course.imageName)
            .resizable()
            .frame(width: 200, height: 200)
            .cornerRadius(100)
            .aspectRatio(contentMode: .fit)
        Text("Are you ready to register " + course.name + "?")
        Text(course.info)
        Text("$ " + course.price)
        Spacer()
        Button {
            print("pressed")
        } label: {
            Text("book now")
        }

        
    }
}



























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
