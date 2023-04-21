//
//  Planet.swift
//  SwiftyOrbits
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation

struct Planet {
    let name: String
    let a: Double // major radius
    let lambda0: Double // mean longitude at epoch
    let e: Double // eccentricity
    let I: Double // inclination to ecliptic
    let perihelion: Double // longitude of perihelion
    let node: Double // longitude of ascending node
    let T: Double // orbital period
    let mass: Double // planetary mass / solar mass
}


let planets = [
    Planet(name: "Mercury", a: 0.3871, lambda0: 252.25084, e: 0.20564, I: 7.00506, perihelion: 77.457718, node: 48.330893, T: 0.24085, mass: 0.16601),
    Planet(name: "Venus", a: 0.7233, lambda0: 181.97973, e: 0.00676, I: 3.39471, perihelion: 131.767557, node: 76.67992, T: 0.6152, mass: 2.4478383),
    Planet(name: "Earth", a: 1.0, lambda0: 100.46435, e: 0.01673, I: 0.0, perihelion: 102.937348, node: 0.0, T: 1.0, mass: 3.003489e-6),
    Planet(name: "Mars", a: 1.5237, lambda0: 355.45332, e: 0.09337, I: 1.84967, perihelion: 336.060234, node: 49.57854, T: 1.8808, mass: 3.227156e-7),
    Planet(name: "Jupiter", a: 5.2025, lambda0: 34.39644, e: 0.04839, I: 1.30439, perihelion: 14.728479, node: 100.473909, T: 11.862, mass: 0.0009547919),
    Planet(name: "Saturn", a: 9.5415, lambda0: 50.49434, e: 0.05566, I: 2.48524, perihelion: 92.598878, node: 113.662424, T: 29.456, mass: 0.0002858857),
    Planet(name: "Uranus", a: 19.188, lambda0: 314.055, e: 0.046381, I: 0.772556, perihelion: 172.398316, node: 73.989821, T: 84.07, mass: 4.36572e-5),
    Planet(name: "Neptune", a: 30.07, lambda0: 304.222, e: 0.00859, I: 1.767975, perihelion: 46.975219, node: 131.79431, T: 164.81, mass: 5.151389e-5)
]
