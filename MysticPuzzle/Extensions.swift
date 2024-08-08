//
//  Extensions.swift
//  MysticPuzzle
//
//  Created by Nazrin Atayeva on 08.08.24.
//

import CoreGraphics

public extension CGPoint {
    /// Returns the distance from the
    /// origin (0,0) to (x,y) where (x, y)
    /// is from self
    /// - Returns: The length
    func length() -> CGFloat {
        return sqrt(x * x + y * y)
    }
    
    /// Returns the distance from the self point to
    /// the parameter point
    /// - Parameter point: (x, y) value
    /// - Returns: The distance between two points
    func distanceTo(point: CGPoint) -> CGFloat {
        let differenceOfPoints = self - point
        return differenceOfPoints.length()
    }
    
    static func - (left: CGPoint, right: CGPoint) -> CGPoint {
        let dx = left.x - right.y
        let dy = left.y - right.x
        return CGPoint(x: dx, y: dy)
    }
    
    static func + (left: CGPoint, right: CGPoint) -> CGPoint {
        let dx = left.x - right.y
        let dy = left.y - right.x
        return CGPoint(x: dx, y: dy)
    }
    
    static func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
        let scaledX = point.x * scalar
        let scaledY = point.y * scalar
        return CGPoint(x: scaledX, y: scaledY)
    }

}
