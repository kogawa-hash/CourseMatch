//
//  ContentView.swift
//  CourseMatch
//
//  Created by Kei Ogawa on 7/15/21.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

let storedUsername = "Urstudent"
let storedpassword = "Igotour"

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationSucceed: Bool = false
    
    @State private var isActive: Bool = false
    @State private var selection: Int? = nil
        
    var body: some View {
        
        NavigationView {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("The CourseMatch")
                    .font(.system(size:40, weight: .medium, design: .default))
                    .fontWeight(.semibold)
                    .padding(.bottom)
                Text("   */Sign in using the correct UofR credentials/*")
                    .font(.system(size:11, weight:.light, design: .monospaced))
                UsernameTextField(username: $username)
                    .padding()
                PasswordSecureField(password: $password)
                    .padding()
                if authenticationDidFail {
                    Text("Incorrect Information. Try again.")
                        .offset(y:-10)
                        .foregroundColor(.red)
                }
                
                NavigationLink(destination: TabforView().navigationBarBackButtonHidden(true), tag:
                    1, selection: self.$selection) {
                    Text("")
                }
                Button(action: {
                    if self.username == storedUsername && self.password == storedpassword {
                        self.authenticationSucceed = true
                        self.selection = 1
                        self.authenticationDidFail = false
                        
                        self.username = ""
                        self.password = ""
                        
                    } else{
                        self.authenticationDidFail = true
                        self.authenticationSucceed = false
                        
                        self.username = ""
                        self.password = ""
                    }
                }) { LoginButton()
                }
            .padding()
            }
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LoginButton: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}


struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Username", text: $username )
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text:$password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}


