//
//  FaceView.swift
//  FaceIt
//
//  Created by Bennett Hartrick on 5/20/17.
//  Copyright © 2017 Bennett. All rights reserved.
//

import UIKit

class FaceView: UIView {
    
    var scale: CGFloat = 0.9
    
    override func draw(_ rect: CGRect) {
        let skullRadius = min(bounds.size.width, bounds.size.height) / 2 * scale
        let skullCenter = CGPoint(x: bounds.midX, y: bounds.midY)
        let path = UIBezierPath(arcCenter: skullCenter, radius: skullRadius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.lineWidth = 5.0
        UIColor.blue.set()
        path.stroke()
    }

}
