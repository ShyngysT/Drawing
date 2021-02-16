//
//  CustomView.swift
//  Drawing
//
//  Created by Tagay Shyngys on 2/14/21.
//

import UIKit

class CustomView: UIView {
    var point1: CGPoint?
    var point2: CGPoint!

    
  
override func draw(_ rect: CGRect) {
        // Drawing code
    if let p1 = point1{
        let rect = Rectangle(p1: p1, p2: point2, color: .green, stroke_width: 3, isFilled: false)
        rect.drawPath()
    }
    
}
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            point1  = touch.location(in: self)
        }
    
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            point2  = touch.location(in: self)
        }
        setNeedsDisplay()
    
}

}

