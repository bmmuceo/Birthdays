//
//  ContentView.swift
//  Birthdays
//
//  Created by RyanA on 4/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var friends: [Friend] = [
        Friend(name: "Ryan", birthday: .now),
        Friend(name: "John", birthday: Date(timeIntervalSince1970: 0))
    ]
    
    @State private var newName = ""
    @State private var newDate = Date.now
    
    
    var body: some View {
        
        NavigationStack {
            Spacer(minLength: 5.0)
            List(friends, id: \.name) { friend in
                HStack{
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
            }
            .navigationTitle("Birthdays")
            .fontDesign(.rounded)
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Birthday !")
                        .font(.headline)
                        .fontWeight(.black)
                        .padding(.bottom, 10)
                    DatePicker(
                        selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: .date) {
                            TextField("Name", text: $newName)
                                .textFieldStyle(.roundedBorder)
                        }
                        .padding(.horizontal)
                    
                    Button("Save") {
                        let newFriend = Friend(name: newName, birthday: newDate)
                        friends.append(newFriend)
                        
                        newName = ""
                        newDate = .now
                    }
                    .bold()
                }
                .padding(.vertical, 20)
                .background(.bar)
            }
            
            
            
            
            
        }
        .autocorrectionDisabled()
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
