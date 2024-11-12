//
//  NotificationView.swift
//  TabBar
//
//  Created by Mushfiq Humayoon on 12/11/24.
//

import SwiftUI

struct NotificationView: View {
    
    var body: some View {
        VStack {
            Circle().fill(.green)
                .overlay {
                    Text("2")
                        .font(.system(size: 100))
                }
                .padding()
        }
    }
}
