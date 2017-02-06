//
//  SliderView.swift
//  BrushChooser
//
//  Created by u0669056 on 2/6/17.
//  Copyright © 2017 u0669056. All rights reserved.
//

import UIKit


class SliderView: UIView{
    private var slider: UISlider = UISlider()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        slider.frame = CGRect(x: 10.0, y: 20.0, width: 190.0, height: 50.0)
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        addSubview(slider)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func sliderValueChanged()
    {
        NSLog("Sliderchanged")
    }
}
