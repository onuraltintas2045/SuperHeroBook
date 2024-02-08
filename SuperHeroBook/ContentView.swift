//
//  ContentView.swift
//  SuperHeroBook
//
//  Created by Onur Altintas on 6.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(superHeroList) {superHero in
                
                NavigationLink {
                    SuperHeroDetailView(hero: superHero)
                } label: {
                    heroImageMaker(superHero: superHero)
                }
            }
            .navigationTitle("Super Hero Book")
        }
    }
    
    
    @ViewBuilder
    func heroImageMaker(superHero: SuperHeroModel) -> some View {
        VStack{
            Image(superHero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 100, maxHeight: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray.opacity(0.5), lineWidth: 4))
                .shadow(color: superHero.specialColor, radius: 4)
            Text(superHero.name)
                .font(.largeTitle.bold())
            Text(superHero.realName)
                .font(.title)
        }
        .padding()
        .shadow(color: superHero.specialColor,radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
    }
}

#Preview {
    ContentView()
}
