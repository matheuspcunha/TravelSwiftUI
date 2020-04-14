//
//  ContentView.swift
//  app-travel
//
//  Created by Matheus Cunha on 12/04/20.
//  Copyright © 2020 Matheus Cunha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: verify if is iPhone or iPad
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                    List(travels) { travel in
                        NavigationLink(destination: MapView(coordenada: travel.localizacao).navigationBarTitle("Localização")) {
                            CellTravelView(travel: travel)
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
