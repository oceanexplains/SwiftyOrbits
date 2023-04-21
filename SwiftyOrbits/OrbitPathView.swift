//
//  OrbitPathView.swift
//  SwiftyOrbits
//
//  Created by Tomer Zed on 4/21/23.
//

import SwiftUI

struct OrbitPathView: View {
    let orbit: Orbit
    let steps: Int
    let scale: CGFloat
    let time: Double
    
    var path: Path {
        var path = Path()
        let dt = time / Double(steps)
        
        for step in 0...steps {
            let t = dt * Double(step)
            let position3D = orbit.position(at: t)
            let position = toScreenCoordinates(point: CGPoint(x: position3D.x, y: position3D.y), scale: scale, bounds: UIScreen.main.bounds)
            
            if step == 0 {
                path.move(to: position)
            } else {
                path.addLine(to: position)
            }
        }
        
        return path
    }
    
    var body: some View {
        path
            .stroke(Color.gray, lineWidth: 1)
    }
}






