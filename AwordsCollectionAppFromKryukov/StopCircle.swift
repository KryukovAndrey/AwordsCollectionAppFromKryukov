//
//  StopCircle.swift
//  AwordsCollectionAppFromKryukov
//
//  Created by Andrey on 09.08.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct StopCircle: View {
    var body: some View {
        GeometryReader { geometry in
            
            Circle()
                .fill(Color(.red))
            
            Circle()
                .stroke(Color.white,
                        style: StrokeStyle(
                            lineWidth: 10))   // не смог привезать "10" к размеру представления
            
            Path { path in
                let size = min(geometry.size.width, geometry.size.height)
                let nearLine = size * 0.1
                let farLine = size * 0.9
                
                path.move(to: CGPoint(x: farLine, y: (size / 2  - nearLine)))
                path.addLine(to: CGPoint(x: farLine, y: (size / 2  + nearLine)))
                path.addLine(to: CGPoint(x: nearLine, y: (size / 2  + nearLine)))
                path.addLine(to: CGPoint(x: nearLine, y: (size / 2  - nearLine)))
            }
            .fill(Color.white)            
        }
    }
}

struct StopCircle_Previews: PreviewProvider {
    static var previews: some View {
        StopCircle()
        .frame(width: 200, height: 200)
    }
}
