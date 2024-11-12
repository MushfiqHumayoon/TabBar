//
//  SettingsView.swift
//  TabBar
//
//  Created by Mushfiq Humayoon on 12/11/24.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        VStack {
            Circle().fill(.orange)
                .overlay {
                    Text("3")
                        .font(.system(size: 100))
                }
                .padding()
        }
    }
}
