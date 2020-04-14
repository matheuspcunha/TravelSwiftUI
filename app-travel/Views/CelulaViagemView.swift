//
//  CelularViagemView.swift
//  alura-viagens
//
//  Created by Matheus Cunha on 13/04/20.
//  Copyright © 2020 Matheus Cunha. All rights reserved.
//

import SwiftUI

struct CellTravelView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var travel: Travel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(travel.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            Image(travel.imagem)
            .resizable()
                .aspectRatio(contentMode: .fill)
            .frame(height: self.horizontalSizeClass == .compact ? 125 : 200)
                .clipped()
            
            HStack {
                Text(travel.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(travel.valor)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

struct CelularViagemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CellTravelView(travel: viagens[0])
                .environment(\.horizontalSizeClass, .compact)
            .previewLayout(.fixed(width: 400, height: 220))

            CellTravelView(travel: viagens[0])
                .environment(\.horizontalSizeClass, .regular)
            .previewLayout(.fixed(width: 835, height: 310))
        }
    }
}
