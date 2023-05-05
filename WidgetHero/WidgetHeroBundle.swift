//
//  WidgetHeroBundle.swift
//  WidgetHero
//
//  Created by Matteo Buompastore on 05/05/23.
//

import WidgetKit
import SwiftUI

@main
struct WidgetHeroBundle: WidgetBundle {
    var body: some Widget {
        WidgetHero()
        WidgetHeroLiveActivity()
    }
}
