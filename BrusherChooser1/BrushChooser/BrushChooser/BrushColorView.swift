//
//  BrushColorView.swift
//  BrushChooser
//
//  Created by u0669056 on 2/6/17.
//  Copyright © 2017 u0669056. All rights reserved.
//

import UIKit

class BrushColorView: UIControl
{
    
    private var brushColorRect: CGRect = CGRect.zero
    private var _angle: CGFloat = 0.0
    private var touchSpot: CGPoint = CGPoint.zero
    private var color: UIColor = UIColor.black
    override func draw(_ rect: CGRect)
    {
        brushColorRect = CGRect(x: 0.0, y: 0.0, width: bounds.size.width, height: bounds.size.height)
        
        let context: CGContext = UIGraphicsGetCurrentContext()!
        //context.setFillColor(UIColor.blue.cgColor)
        context.addEllipse(in: brushColorRect)
        //context.drawPath(using: .fill)
        
        
        for var x in 0...Int(bounds.size.width)
        {
            for var y in 0...Int(bounds.size.height)
            {
                color = colorFromColorWheelWithBoundingRect(rect: brushColorRect, point: CGPoint(x: x,y: y), brightness: 1.0, alpha:1.0)
                context.setStrokeColor(color.cgColor)
                context.addRect(CGRect(x: x, y: y, width: 1, height: 1))
                context.drawPath(using: .eoFillStroke)
                
                
            }
        }
        
        var nibRect: CGRect = CGRect(x: 0.0, y: brushColorRect.size.height/2.0, width: 10.0, height: 10.0)
        
        nibRect.origin.x = brushColorRect.midX + touchSpot.x - nibRect.width / 2.0
        nibRect.origin.y = brushColorRect.midY + touchSpot.y - nibRect.width / 2.0
        
        context.setFillColor(UIColor.black.cgColor)
        context.addEllipse(in: nibRect)
        context.drawPath(using: .fill)
        
    }
    func colorFromColorWheelWithBoundingRect(rect: CGRect, point: CGPoint, brightness: CGFloat, alpha: CGFloat) -> UIColor
    {
        var _alpha = alpha
        
        let origin: CGPoint = CGPoint(x: rect.origin.x + rect.size.width * 0.5, y: rect.origin.y + rect.size.height * 0.5)
        let vector: CGPoint = CGPoint(x: point.x - origin.x, y: point.y - origin.y)
        let d = atan2(Double(vector.y), Double(-vector.x))
        let hue: CGFloat = CGFloat((d + M_PI) / M_PI * 0.5)
        
        var saturation: CGFloat = CGFloat(sqrt((Double(vector.x) * Double(vector.x)) + (Double(vector.y) * Double(vector.y))) / (Double(rect.size.width) * 0.5))
        
        if (saturation > 1.0)
        {
            saturation = 1.0
            _alpha = 0.0
        }
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: _alpha)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        let touch: UITouch = touches.first!
        touchSpot = touch.location(in: self)
        NSLog("x: \(touchSpot.x) y: \(touchSpot.y)")
        
        touchSpot.x -= brushColorRect.midX //(_knobRect.origin.x +_knobRect.width / 2.0)
        touchSpot.y -= brushColorRect.midY
        
        angle = atan2(touchSpot.y, touchSpot.x)
        
        
        sendActions(for: .valueChanged)
        
        
        
    }
    var angle: CGFloat {
        get{
            return _angle
        }
        set{
            _angle = newValue
            // TODO: angle bounds?
            setNeedsDisplay()
        }
    }
    var getColor: UIColor {return color}

}
