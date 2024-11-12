//
//  MyTabView.swift
//  TabBar
//
//  Created by Mushfiq Humayoon on 12/11/24.
//

import SwiftUI

struct MyTabView: View {
    
    let image: String
    @Binding var isSelected: Bool
    var didSelectTab: (() -> Void)?
    
    var body: some View {
        GeometryReader { geometry in
            Button { didSelectTab?() } label: {
                VStack {
                    Image(systemName: image + (isSelected ? ".fill" : ""))
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 50)
    }
}
