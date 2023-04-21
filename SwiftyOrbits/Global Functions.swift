//
//  Global Functions.swift
//  SwiftyOrbits
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation




func toScreenCoordinates(point: CGPoint, scale: CGFloat, bounds: CGRect) -> CGPoint {
    return CGPoint(x: point.x * scale + bounds.midX, y: point.y * scale + bounds.midY)
}
