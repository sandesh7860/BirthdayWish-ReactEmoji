//
//  ContentView.swift
//  ReactEmoji
//
//  Created by Sandesh on 10/09/2022.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🤘🏼, 🥳, 🎁, 🎂, 🎉
}

struct ContentView: View {
    @State var selection: Emoji = .🎉
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji to Wish", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Birthday Wish Emoji!")
            .padding()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
