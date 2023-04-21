//
//  PlanetView.swift
//  SwiftyOrbits
//
//  Created by Tomer Zed on 4/21/23.
//

import SwiftUI

struct PlanetView: View {
    let name: String
    let position: CGPoint
    let z: Double
    
    var color: Color {
        if z < 0 {
            return Color.blue
        } else if z > 0 {
            return Color.red
        } else {
            return Color.purple
        }
    }
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .frame(width: 10, height: 10)
                .position(position)
            Text(name)
                .position(position)
                .foregroundColor(color)
                .offset(y: 10)
        }
    }
}


