//
//  HeartRateManager.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

class HeartRateManager: ObservableObject {
    @Published var menus = heartRateMenus
    @Published var lastSelectedMenuIndex = 0
    
    func selectMenu(index: Int) {
        menus[index].selected = true
        
        if index != lastSelectedMenuIndex {
            menus[lastSelectedMenuIndex].selected = false
            lastSelectedMenuIndex = index
        }
    }
}
