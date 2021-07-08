//
//  HomeView.swift
//  ToDo
//
//  Created by Justin Bush on 2021-07-08.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            TaskList()
                .navigationTitle("Today")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Add button was tapped")
                        }) {
                            HStack {
                                Image(.add)
                            }
                        }
                        
                        Button(action: {
                            print("Trash button was tapped")
                        }) {
                            HStack {
                                Image(.trash)
                                    .foregroundColor(.red)
                                    .accentColor(.red)
                                    .colorMultiply(.red)
                            }
                        }
                        .foregroundColor(.red)
                        .accentColor(.red)
                    }
                }
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
