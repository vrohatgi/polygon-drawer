//
//  Drawing.swift
//  Functions-OSX
//
//  Created by Dion Larson on 7/17/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import Foundation

func runDrawing() {
    // drawing code goes below here
    drawPolygon(sideLength: 50, numberOfSides: 3)
    
    // drawing code goes above here
}


// custom functions go below here

func drawTriangle(sideLength: Int) {
    for _ in 1...3 {
    move(steps: sideLength)
    rotate(degrees: 360 / 3)
    }
}

func drawPentagon(sideLength: Int) {
    for _ in 1...5 {
    move(steps: sideLength)
    rotate(degrees: 360 / 5)
    }
}

func drawHexagon(sideLength: Int) {
    for _ in 1...6 {
    move(steps: sideLength)
    rotate(degrees: 360 / 6)
    }
}

func drawSquare(sideLength: Int) {
    for _ in 1...4 {
    move(steps: sideLength)
    rotate(degrees: 90)
    }
}

func drawPolygon (sideLength: Int, numberOfSides: Int) {
    for _ in 1...numberOfSides {
        move(steps: sideLength)
        rotate(degrees: calculateRotationForPolygon(sides: 3))
    }
}

func degreesToRadians(degrees: Double) -> Double {
    return degrees / 180 * Double.pi
}

func calculateRotationForPolygon(sides: Int) -> Double {
    return Double(360 / sides)
}

// custom functions go above here
