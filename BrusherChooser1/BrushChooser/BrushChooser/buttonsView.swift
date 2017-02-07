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
    private var miterButton: UIButton = UIButton()
    private var roundButton: UIButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
    private var bevelButton: UIButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
    private var joinLabel: UILabel = UILabel()
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        let stackView: UIStackView = UIStackView(frame: CGRect(x: 0.0, y: 0.0, width: frame.width, height: frame.height))
        stackView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        stackView.axis = UILayoutConstraintAxis.horizontal
        stackView.distribution = UIStackViewDistribution.fillProportionally
        self.addSubview(stackView)
        
        joinLabel = UILabel()
        joinLabel.text = "  JOIN:  "
        joinLabel.frame = CGRect(x: 0.0, y: 0.0, width: 0.0, height: 0.0)
        joinLabel.font = UIFont(name: "Helvetica-Bold", size: 12)
        joinLabel.backgroundColor = UIColor.lightGray
        stackView.addArrangedSubview(joinLabel)
        
        miterButton = UIButton(frame: CGRect(x: 75.0 , y: 0.0, width: 200.0, height: 30.0))
        miterButton.backgroundColor = UIColor.blue
        miterButton.setTitle("MITER", for: .normal)
        miterButton.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 14)
        miterButton.addTarget(self, action: #selector(self.widthButtonTouched), for: UIControlEvents.touchDown)
        
        stackView.addArrangedSubview(miterButton)
        
        roundButton = UIButton(frame: CGRect(x: 75.0 , y: 0.0, width: 200.0, height: 30.0))
        roundButton.backgroundColor = UIColor.cyan
        roundButton.setTitle("ROUND", for: .normal)
        roundButton.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 14)
        roundButton.addTarget(self, action: #selector(self.endCapsButtonTouched), for: UIControlEvents.touchDown)
        
        stackView.addArrangedSubview(roundButton)
        
        bevelButton = UIButton(frame: CGRect(x: 75.0 , y: 0.0, width: 200.0, height: 30.0))
        bevelButton.backgroundColor = UIColor.green
        bevelButton.setTitle("BEVEL", for: .normal)
        bevelButton.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 14)
        bevelButton.addTarget(self, action: #selector(self.joinButtonTouched), for: UIControlEvents.touchDown)
        
        stackView.addArrangedSubview(bevelButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func widthButtonTouched(){
        miterButton.backgroundColor = UIColor.black
        bevelButton.backgroundColor = UIColor.green
        roundButton.backgroundColor = UIColor.cyan
        NSLog("Button Pressed!")
    }
    func joinButtonTouched(){
        bevelButton.backgroundColor = UIColor.black
        miterButton.backgroundColor = UIColor.blue
        roundButton.backgroundColor = UIColor.cyan
        NSLog("Button Pressed!")
    }
    func endCapsButtonTouched(){
        roundButton.backgroundColor = UIColor.black
        bevelButton.backgroundColor = UIColor.green
        miterButton.backgroundColor = UIColor.blue
        NSLog("Button Pressed!")
    }
    
    var getMiterButton: UIButton {return miterButton}
    var getRoundButton: UIButton {return roundButton}
    var getbevelButton: UIButton {return bevelButton}
    
}
