//
//  ContentView.swift
//  ToDo
//
//  Created by Justin Bush on 2021-07-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TaskList()
                .navigationTitle("Today")
                .toolbar {
                    // Left Bar
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        // Date
                        Text("July 30, 2021")
                            .font(.subheadline)
                            .fontWeight(.black)
                            .foregroundColor(.secondary)
                    }
                    // Right Bar
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        // Add
                        Button(action: {
                            print("Add button was tapped")
                        }) {
                            HStack {
                                Image(.add)
                            }
                        }
                        // Trash
                        Button(action: {
                            print("Trash button was tapped")
                        }) {
                            HStack {
                                Image(.trash)
                            }
                        }
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
