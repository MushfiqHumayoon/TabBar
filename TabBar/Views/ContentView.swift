//
//  ContentView.swift
//  TabBar
//
//  Created by Mushfiq Humayoon on 12/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tabs = .home

    var body: some View {
        CustomTabView(selection: $selectedTab) {
            switch selectedTab {
            case .home:
                HomeView()
            case .notification:
                NotificationView()
            case .settings:
                SettingsView()
            }
        }
        .ignoresSafeArea()
        .background(.black.opacity(0.1))
    }
}

#Preview {
    ContentView()
}



