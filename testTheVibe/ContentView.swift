//
//  ContentView.swift
//  testTheVibe
//
//  Created by Malachi Hul on 2025/12/26.
//

import SwiftUI

struct ContentView: View {
    @State private var welcomeMessage: String = ""

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(welcomeMessage)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
