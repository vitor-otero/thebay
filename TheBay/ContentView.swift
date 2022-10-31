//
//  ContentView.swift
//  TheBay
//
//  Created by Vitor Otero on 28/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            HStack{
                Menu("Menu"){
                    Text("Home")
                    Text("Shop")
                    Text("Account")
                    Text("Bag")
                    
                }
                Spacer()
                Image("logo")
                Spacer()
            }
         
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {

                Webview(url: "https://www.thebay.com/").tabItem {   Text("Home"); Image(systemName: "house.fill") }.tag(1)
                Webview(url: "https://www.thebay.com/c/men").tabItem { Text("Shop"); Image(systemName: "cart") }.tag(2)
                Webview(url: "https://www.thebay.com/account/login").tabItem { Text("Account")
                    Image(systemName: "person")
                }.tag(3)
                Webview(url: "https://www.thebay.com/cart").tabItem { Text("Bag")
                    Image(systemName: "bag")
                }.tag(4)

            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
