//
//  PedestrianCrossing.swift
//  AwordsCollectionAppFromKryukov
//
//  Created by Andrey on 10.08.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct PedestrianCrossing: View {
    var body: some View {
        GeometryReader { geometry in
            
            Rectangle()
                .foregroundColor(.blue)
            
            Path { path in
                let size = min(geometry.size.width, geometry.size.height)
                let nearLine = size * 0.1
                let farLine = size * 0.9
                
                path.move(to: CGPoint(x: size / 2, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: size / 2, y: nearLine))
            }
            .foregroundColor(.white)
            
            Path { path in
                let size = min(geometry.size.width, geometry.size.height)
                let shortline = size * 0.05
                let nearLine = size * 0.1
                let farLine = size * 0.9
                
                path.move(to: CGPoint(x: nearLine * 2, y: farLine))
                path.addLine(to: CGPoint(x: shortline * 7, y: shortline * 13))
                path.addLine(to: CGPoint(x: shortline * 8.5, y: shortline * 13))
                path.addLine(to: CGPoint(x: shortline * 8.5, y: shortline * 13))
                path.addLine(to: CGPoint(x: shortline * 6, y: farLine))
            }
            .foregroundColor(.black)
            
            Path { path in
                let size = min(geometry.size.width, geometry.size.height)
                let shortline = size * 0.05
                let nearLine = size * 0.1
                let farLine = size * 0.9
                let middle = size / 2
                
                path.move(to: CGPoint(x: middle - nearLine/2, y: farLine))
                path.addLine(to: CGPoint(x: shortline * 10 - shortline * 0.75, y: shortline * 13))
                path.addLine(to: CGPoint(x: shortline * 10 + shortline * 0.75, y: shortline * 13))
                path.addLine(to: CGPoint(x: middle + nearLine/2, y: farLine))
            }
                .foregroundColor(.black)
            
            Path { path in
                let size = min(geometry.size.width, geometry.size.height)
                let shortline = size * 0.05
                let nearLine = size * 0.1
                let farLine = size * 0.9
                
                path.move(to: CGPoint(x: size - nearLine * 2, y: farLine))
                path.addLine(to: CGPoint(x: size - shortline * 7, y: shortline * 13))
                path.addLine(to: CGPoint(x: size - shortline * 8.5, y: shortline * 13))
                path.addLine(to: CGPoint(x: size - shortline * 8.5, y: shortline * 13))
                path.addLine(to: CGPoint(x: size - shortline * 6, y: farLine))
            }
            .foregroundColor(.black)
            
            Image(systemName: "person")   // "figure.walk" - что-то он не распознал фигурку 􀝢 ... (
            .resizable()
            .scaleEffect(0.35)
            .offset(y: -geometry.size.height / 20)
        }
    }
}

struct PedestrianCrossing_Previews: PreviewProvider {
    static var previews: some View {
        PedestrianCrossing()
            .frame(width: 200, height: 200)
    }
}
