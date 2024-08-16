//
//  DetailView.swift
//  CourseMatch
//
//  Created by Kei Ogawa on 7/15/21.
//

import SwiftUI

struct DetailView: View {
    
    @State private var isSpring = false
    
    let contact: Contact
    
    var body: some View {
        ZStack {
            SpringTerm(topColor: isSpring ? .yellow :.green, bottomColor: isSpring ?  .white: Color("lightblue"))
            VStack {
                Text(contact.name)
                    .font(.system(size:20, weight: .medium, design: .default))
                    .foregroundColor(.black)
                VStack(spacing: 0) {
                    Image(systemName: contact.icon)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:150, height:100)
                    
                    Text(contact.major)
                        .font(.system(size:36, weight: .medium))
                        .foregroundColor(.black)
                }
                
                
                VStack {
                    if isSpring {
                        Text("Spring")
                            .font(.system(size:30, weight: .medium))
                            .frame(width: 300, height: 100)
                    } else {
                        Text("Fall")
                            .font(.system(size:30, weight: .medium))
                            .frame(width: 300, height: 100)
                    }
                    
                }
                
                HStack {
                    if isSpring {
                        Text(contact.springOne)
                            .font(.system(size:15, weight: .medium))
                            .frame(width: 300, height: 40)
                    } else {
                        Text(contact.fallOne)
                            .font(.system(size:15, weight: .medium))
                            .frame(width: 300, height: 40)
                    }
                }
                
                .padding(.bottom, 8)
                
                HStack {
                    if isSpring {
                        Text(contact.springTwo)
                            .font(.system(size:15, weight: .medium))
                            .frame(width: 300, height: 40)
                    } else{
                        Text(contact.fallTwo)
                            .font(.system(size:15, weight: .medium))
                            .frame(width: 300, height: 40)
                    }
                }
                
                .padding(.bottom, 8)
                
                HStack {
                    if isSpring {
                        Text(contact.springThree)
                            .font(.system(size:15, weight: .medium))
                            .frame(width: 300, height: 40)
                    } else{
                        Text(contact.fallThree)
                            .font(.system(size:15, weight: .medium))
                            .frame(width: 300, height: 40)
                    }
                }
                
                .padding(.bottom, 8)
                
                HStack {
                    if isSpring {
                        Text(contact.springFour)
                            .font(.system(size:15, weight: .medium))
                            .frame(width: 300, height: 40)
                    } else{
                        Text(contact.fallFour)
                            .font(.system(size:15, weight: .medium))
                            .frame(width: 300, height: 40)
                    }
                }
                
                .padding(.bottom, 8)
                
                HStack {
                    if isSpring {
                        Text(contact.springFive)
                            .font(.system(size:15, weight: .medium))
                            .frame(width: 300, height: 40)
                    } else{
                        Text(contact.fallFive)
                            .font(.system(size:15, weight: .medium))
                            .frame(width: 300, height: 40)
                    }
                }
                
                Spacer()
                
                Button{
                    isSpring.toggle()
                } label: {
                    springbutton(title:"Switch Term", textColor: .blue, background: .white)
                }
                
                .padding(.bottom, 150)
            }
        }
    }
}
  


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: contacts[0])
    }
}

struct SpringTerm: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct SpringCourse: View {
    
    var classes:String
    
    var body: some View {
        Text(classes)
            .font(.system(size:15, weight: .medium))
            .frame(width: 300, height: 40)
    }
}

struct springbutton: View {
    
    var title: String
    var textColor: Color
    var background: Color
    
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(background)
            .foregroundColor(textColor)
            .font(.system(size:20, weight: .bold, design: .default))
            .cornerRadius(10)
        
        
    }
}
