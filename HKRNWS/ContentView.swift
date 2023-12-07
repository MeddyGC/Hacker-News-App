//
//  ContentView.swift
//  HKRNWS
//
//  Created by Meddy on 12/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){
                post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                            
                    }
                    .listRowBackground(Color.green)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("HKR NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



