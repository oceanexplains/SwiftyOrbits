//
//  Orbit.swift
//  SwiftyOrbits
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation


struct Orbit {
    let semiMajorAxis: Double
    let eccentricity: Double
    let orbitalPeriod: Double
    let perihelion: Double
    let node: Double
    let inclination: Double
    
    init(semiMajorAxis: Double, eccentricity: Double, orbitalPeriod: Double, perihelion: Double, node: Double, inclination: Double) {
        self.semiMajorAxis = semiMajorAxis
        self.eccentricity = eccentricity
        self.orbitalPeriod = orbitalPeriod
        self.perihelion = perihelion
        self.node = node
        self.inclination = inclination
    }
    
    func position(at time: Double) -> (x: Double, y: Double, z: Double) {
        let M = 2.0 * .pi / orbitalPeriod * (time - TAU)
        var E = M
        var E_prev = 0.0
        
        let maxIterations = 100
        var iteration = 0
        while abs(E - E_prev) > 1e-5 && iteration < maxIterations {
            E_prev = E
            E = M + eccentricity * sin(E)
            iteration += 1
        }
        
        let trueAnomaly = 2.0 * atan2(sqrt(1 + eccentricity) * sin(E / 2.0), sqrt(1 - eccentricity) * cos(E / 2.0))
        let distance = semiMajorAxis * (1 - eccentricity * eccentricity) / (1 + eccentricity * cos(trueAnomaly))
        
        let xh = distance * cos(trueAnomaly + perihelion)
        let yh = distance * sin(trueAnomaly + perihelion)
        let x = xh * cos(node) - yh * cos(inclination) * sin(node)
        let y = xh * sin(node) + yh * cos(inclination) * cos(node)
        let z = yh * sin(inclination)
        
        return (x: x, y: y, z: z)
    }
}
