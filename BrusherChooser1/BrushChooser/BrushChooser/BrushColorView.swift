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
    override func draw(_ rect: CGRect)
    {
        brushColorRect = CGRect(x: 0.0, y: 0.0, width: bounds.size.width, height: bounds.size.width)
        
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.setFillColor(UIColor.blue.cgColor)
        context.addEllipse(in: brushColorRect)
        context.drawPath(using: .fill)
        
        
    }
}
