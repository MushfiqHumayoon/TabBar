//
//  HomeView.swift
//  TabBar
//
//  Created by Mushfiq Humayoon on 12/11/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack {
            Circle().fill(.blue)
                .overlay {
                    Text("1")
                        .font(.system(size: 100))
                }
                .padding()
        }
    }
}
