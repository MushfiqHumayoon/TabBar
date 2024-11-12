//
//  Tabs.swift
//  TabBar
//
//  Created by Mushfiq Humayoon on 12/11/24.
//


enum Tabs {
    case home
    case notification
    case settings
    
    var icon: String {
        switch self {
        case .home: return "house"
        case .notification: return "bell"
        case .settings: return "gearshape"
        }
    }
    
    var selectedTab: Tabs {
        return self
    }
}
