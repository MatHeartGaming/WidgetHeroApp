//
//  ContentView.swift
//  HeroWidget
//
//  Created by Matteo Buompastore on 05/05/23.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
    let superHeroArray = [spiderman, batman, ironMan, wolverine, babySuperhero]
    
    @AppStorage ("hero", store: UserDefaults(suiteName: "group.it.spaarkly.HeroWidget")) var heroData = Data()
    
    var body: some View {
        VStack {
            ForEach(superHeroArray) { hero in
                HeroView(hero: hero)
                    .onTapGesture {
                        saveToDefaults(hero: hero)
                    }
            }
        }
        .frame(width: UIScreen.main.bounds.width)
        .padding(8)
    }
    
    func saveToDefaults(hero : SuperHero) {
        if let heroData = try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
            print("Hero saved: \(hero.name)")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
