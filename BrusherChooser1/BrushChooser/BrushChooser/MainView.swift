//
//  MainView.swift
//  BrushChooser
//
//  Created by u0669056 on 2/6/17.
//  Copyright © 2017 u0669056. All rights reserved.
//

import UIKit

class MainView: UIView
{
    private var brushColorView: BrushColorView? = nil
    private var buttonView: buttonsView? = nil
    private var sliderView: SliderView? = nil
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        brushColorView = BrushColorView()
        brushColorView?.frame = CGRect(x: 10.0, y: 20.0, width: 300.0, height: 400.0)
        brushColorView?.backgroundColor = UIColor.red
        
        addSubview(brushColorView!)
        
        buttonView = buttonsView()
        buttonView?.frame = CGRect(x: 10.0, y: 20.0, width: 300.0, height: 400.0)
        buttonView?.backgroundColor = UIColor.darkGray
        
        addSubview(buttonView!)
        
        sliderView = SliderView()
        sliderView?.frame = CGRect(x: 10.0, y: 20.0, width: 300.0, height: 400.0)
        sliderView?.backgroundColor = UIColor.brown
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var r: CGRect = bounds
        let heigth: CGFloat = r.height * 0.5
        
        (buttonView!.frame, r) = r.divided(atDistance: heigth, from: .minYEdge)
        (brushColorView!.frame, r) = r.divided(atDistance: heigth, from: .minYEdge)
        (sliderView!.frame, r) = r.divided(atDistance: heigth, from: .minYEdge)
    }
    
}
