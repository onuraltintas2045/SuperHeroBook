//
//  MapView.swift
//  SuperHeroBook
//
//  Created by Onur Altintas on 7.02.2024.
//

import SwiftUI
import MapKit



struct MapViewWithStack: View{
    @Binding var spanPoint: Double
    var hero: SuperHeroModel
    var body : some View {
        ZStack {
            MapView(coordinate: hero.location, spanPoint: $spanPoint)
                .frame(width: UIScreen.main.bounds.width - 20, height: 250)
            HStack{
                Button(action: {
                    spanPoint += 0.1
                }, label: {
                    Image(systemName: "plus.magnifyingglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .padding(10)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(Circle().stroke(Color.gray.opacity(0.2), lineWidth : 1))
                        
                })
                Button(action: {
                    spanPoint -= 0.1
                }, label: {
                    Image(systemName: "minus.magnifyingglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .padding(10)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(Circle().stroke(Color.gray.opacity(0.2), lineWidth : 1))
                })
            }
            .padding(.top, 200)
            .padding(.leading, 270)
            
        }
    }
}
struct MapView: UIViewRepresentable {
    let coordinate: CLLocationCoordinate2D
    @Binding var spanPoint : Double
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: spanPoint, longitudeDelta: spanPoint)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}


