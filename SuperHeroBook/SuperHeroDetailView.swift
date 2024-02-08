//
//  SuperHeroDetailView.swift
//  SuperHeroBook
//
//  Created by Onur Altintas on 7.02.2024.
//

import SwiftUI

struct SuperHeroDetailView: View {
    var hero: SuperHeroModel
    @State var spanPoint = 0.5
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Image(hero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 200, maxHeight: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray.opacity(0.5), lineWidth: 4))
                .shadow(color: hero.specialColor, radius: 4)
            Text("Name : \(hero.name)")
                .font(.title)
            Text("Real Name : \(hero.realName)")
                .font(.title)
            Text("City : \(hero.city)")
                .font(.title)
            Text("Job : \(hero.job)")
                .font(.title)
            
            VStack(alignment : .leading){
                Text("Location :")
                    .font(.title)
                MapViewWithStack(spanPoint: $spanPoint, hero: hero)
                    .frame(width: UIScreen.main.bounds.width * 0.95, height: 250)
                    .clipShape(.rect(cornerRadius: 25))
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(hero.specialColor.opacity(0.2))
    }
}

#Preview {
    SuperHeroDetailView(hero: Batman)
}
