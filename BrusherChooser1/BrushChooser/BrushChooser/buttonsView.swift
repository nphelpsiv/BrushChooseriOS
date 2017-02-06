//
//  buttonsView.swift
//  BrushChooser
//
//  Created by u0669056 on 2/6/17.
//  Copyright © 2017 u0669056. All rights reserved.
//

import UIKit

class buttonsView : UIView
{
    private var widthButton: UIButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
    private var endCapsButton: UIButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
    private var joinButton: UIButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
    
    override init(frame: CGRect){
        super.init(frame: frame)
        widthButton.backgroundColor = UIColor.cyan
        widthButton.setTitle("Change Width", for: .normal)
        widthButton.addTarget(self, action: #selector(self.widthButtonTouched), for: UIControlEvents.touchDown)
        
        self.addSubview(widthButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func widthButtonTouched(){
        widthButton.setTitle("Touched!", for: .normal)
        NSLog("Button Pressed!")
    }
    
}
