//
//  OrbitsView.swift
//  SwiftyOrbits
//
//  Created by Tomer Zed on 4/21/23.
//

import SwiftUI

struct OrbitsView: View {
    @State var time: Double = 0
    let scale: CGFloat = UIScreen.main.bounds.width / 10
    
    var body: some View {
        ZStack {
            Color.black
            
            ForEach(0..<planets.count) { i in
                let orbit = Orbit(semiMajorAxis: planets[i].a, eccentricity: planets[i].e, orbitalPeriod: planets[i].T, perihelion: planets[i].perihelion, node: planets[i].node, inclination: planets[i].I)
                let position3D = orbit.position(at: time)
                let position = toScreenCoordinates(point: CGPoint(x: position3D.x, y: position3D.y), scale: scale, bounds: UIScreen.main.bounds)
                
                let sunPosition3D = (x: -orbit.semiMajorAxis * orbit.eccentricity, y: 0.0, z: 0.0)
                let sunPosition = toScreenCoordinates(point: CGPoint(x: sunPosition3D.x, y: sunPosition3D.y), scale: scale, bounds: UIScreen.main.bounds)
                
                Group {
                    OrbitPathView(orbit: orbit, steps: 360, scale: scale, time: time)
                    PlanetView(name: planets[i].name, position: position, z: position3D.z)
                    SunView(position: sunPosition)
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .onAppear {
            time = 0 // Start at t=0 when the view appears
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                time += 0.01
            }
        }
    }
}



