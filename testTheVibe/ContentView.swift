//
//  ContentView.swift
//  testTheVibe
//
//  Created by Malachi Hul on 2025/12/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingNameDialog = false
    @State private var userName = ""
    @State private var welcomeMessage = ""

    var body: some View {
        VStack {
            Text(welcomeMessage)
            Button("Enter Your Name") {
                isShowingNameDialog = true
            }
        }
        .alert("What is your name Viber?", isPresented: $isShowingNameDialog) {
            TextField("Name", text: $userName)
            Button("Submit") {
                welcomeMessage = "Welcome \(userName), enjoy the vibes."
                userName = ""
            }
            Button("Cancel", role: .cancel) { }
        }
    }
}

#Preview {
    ContentView()
}
