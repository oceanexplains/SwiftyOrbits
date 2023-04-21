//
//  SunView.swift
//  SwiftyOrbits
//
//  Created by Tomer Zed on 4/21/23.
//

import SwiftUI


struct SunView: View {
    let position: CGPoint
    
    var body: some View {
        Circle()
            .fill(Color.yellow)
            .frame(width: 15, height: 15)
            .position(position)
    }
}

