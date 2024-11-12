//
//  CustomTabView.swift
//  TabBar
//
//  Created by Mushfiq Humayoon on 12/11/24.
//

import SwiftUI

struct CustomTabView<Content: View>: View {

    let content: Content
    @Binding var selectedTab: Tabs
    
    init(selection: Binding<Tabs>, @ViewBuilder content: () -> Content) {
        self._selectedTab = selection
        self.content = content()
    }
    
    var body: some View {
        VStack {
            Spacer()
            content
            Spacer()
            HStack {
                MyTabView(image: Tabs.home.icon, isSelected: .constant(selectedTab == .home)) {
                    selectedTab = .home
                }
                MyTabView(image: Tabs.notification.icon, isSelected: .constant(selectedTab == .notification)) {
                    selectedTab = .notification
                }
                MyTabView(image: Tabs.settings.icon, isSelected: .constant(selectedTab == .settings)) {
                    selectedTab = .settings
                }
            }
            .padding()
            .background(curvedBackground())
        }
        
    }
}

extension CustomTabView {
    
    /// Curved Background
    /// - Returns: Returns a shape with 6 curved vertex.
    fileprivate func curvedBackground(with width: CGFloat = UIScreen.main.bounds.width, height: CGFloat = 88) -> some View {
        return Path { path in
            let line = width/3
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: line - 10, y: 0))
            path.addCurve(to: CGPoint(x: line + 10, y: 10),
                          control1: CGPoint(x: line, y: 0),
                          control2: CGPoint(x: line, y: 10))
            path.addLine(to: CGPoint(x: (line*2) - 10, y: 10))
            path.addCurve(to: CGPoint(x: (line*2)+10, y: 0),
                          control1: CGPoint(x: (line*2), y: 10),
                          control2: CGPoint(x: (line*2), y: 0))
            path.addLine(to: CGPoint(x: width, y: 0))
            path.addLine(to: CGPoint(x: width, y: height))
            path.addLine(to: CGPoint(x: 0, y: height))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.closeSubpath()
        }
        .fill(.white)
//        .stroke(.black, style: .init(lineWidth: 1, lineCap: .round))
    }
}
