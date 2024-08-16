//
//  TabView.swift
//  CourseMatch
//
//  Created by Kei Ogawa on 7/15/21.
//

import SwiftUI

struct TabforView: View {
    
    @State private var selection: Int? = nil
    @State var searchText = ""
    @State var isSearching = false
    
    var body: some View {
        TabView {
            Text("\n                     Welcome to the CourseMatch \n                                                                                        This platform lists courses that each student takes and allows users to make couse selection decisions based on the choices of other students.")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Welcome")
                    }
        
            
            NavigationView {
                ScrollView {
                    HStack {
                        HStack{
                            TextField("Search students here", text: $searchText)
                                .padding(.leading, 35)
                        }
                        .background(Color(.systemGray5))
                        .cornerRadius(6)
                        .padding(.horizontal)
                        .onTapGesture(perform: {
                            isSearching = true
                        })
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                Spacer()
                                
                                if isSearching {
                                    Button(action: { searchText = ""}, label: {
                                        Image(systemName: "xmark.octagon")
                                            .padding(.vertical)
                                    })
                                }
                            }.padding(.horizontal, 32)
                            .foregroundColor(.gray)
                        ).transition(.move(edge: .trailing))
                        .animation(.spring())
                        
                        if isSearching {
                            Button(action: {
                                isSearching = false
                                searchText = ""
                                
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for:nil)
                                
                            }, label: {
                                Text("Cancel")
                                    .padding(.trailing)
                                    .padding(.leading, 0)
                            })
                            .transition(.move(edge: .trailing))
                            .animation(.spring())
                        }
                               
                    }
                    
                    ForEach((contacts).filter({ "\($0)".contains(searchText) || searchText.isEmpty}), id: \.self) { contact in
                        NavigationLink(destination: DetailView(contact: contact)) {
                            ContactRow(contact: contact)
                            
                            HStack {
                                Spacer()
                            }
                            
                }
                }
                }
                .navigationBarHidden(true)
                }
            .tabItem {
                Image(systemName: "magnifyingglass.circle.fill")
                Text("Search")
        }
        }
            
    }
        }


struct TabforView_Previews: PreviewProvider {
    static var previews: some View {
        TabforView()
    }
}

struct ContactRow: View {
    
    let contact: Contact
    
    var body: some View {
        HStack{
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading){
                Text(contact.name)
                    .font(.system(size: 21, weight: .medium, design: .default))
            }
        }
    }
}
