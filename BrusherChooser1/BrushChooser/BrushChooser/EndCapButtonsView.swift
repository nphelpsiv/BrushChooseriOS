//
//  EndCapButtonsView.swift
//  BrushChooser
//
//  Created by u0669056 on 2/6/17.
//  Copyright © 2017 u0669056. All rights reserved.
//

import UIKit

class EndCapButtonsView : UIView
{
    private var buttButton: UIButton = UIButton()
    private var squareButton: UIButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
    private var roundButton: UIButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
    private var endCapLabel: UILabel = UILabel()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        let stackView: UIStackView = UIStackView(frame: CGRect(x: 0.0, y: 0.0, width: frame.width, height: frame.height))
        stackView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        stackView.axis = UILayoutConstraintAxis.horizontal
        stackView.distribution = UIStackViewDistribution.fillEqually
        self.addSubview(stackView)
        
        endCapLabel = UILabel()
        endCapLabel.text = "  ENDCAPS:  "
        endCapLabel.frame = CGRect(x: 0.0, y: 0.0, width: 0.0, height: 0.0)
        endCapLabel.font = UIFont(name: "Helvetica-Bold", size: 12)
        stackView.addArrangedSubview(endCapLabel)
        
        buttButton = UIButton(frame: CGRect(x: 75.0 , y: 0.0, width: 200.0, height: 30.0))
        buttButton.backgroundColor = UIColor.red
        buttButton.setTitle("BUTT", for: .normal)
        buttButton.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 14)
        buttButton.addTarget(self, action: #selector(self.widthButtonTouched), for: UIControlEvents.touchDown)
        
        stackView.addArrangedSubview(buttButton)
        
        squareButton = UIButton(frame: CGRect(x: 75.0 , y: 0.0, width: 200.0, height: 30.0))
        squareButton.backgroundColor = UIColor.yellow
        squareButton.setTitle("SQUARE", for: .normal)
        squareButton.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 14)
        squareButton.addTarget(self, action: #selector(self.endCapsButtonTouched), for: UIControlEvents.touchDown)
        
        stackView.addArrangedSubview(squareButton)
        
        roundButton = UIButton(frame: CGRect(x: 75.0 , y: 0.0, width: 200.0, height: 30.0))
        roundButton.backgroundColor = UIColor.orange
        roundButton.setTitle("ROUND", for: .normal)
        roundButton.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 14)
        roundButton.addTarget(self, action: #selector(self.joinButtonTouched), for: UIControlEvents.touchDown)
        
        stackView.addArrangedSubview(roundButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func widthButtonTouched(){
        buttButton.backgroundColor = UIColor.black
        roundButton.backgroundColor = UIColor.orange
        squareButton.backgroundColor = UIColor.yellow
        NSLog("Button Pressed!")
    }
    func joinButtonTouched(){
        roundButton.backgroundColor = UIColor.black
        buttButton.backgroundColor = UIColor.red
        squareButton.backgroundColor = UIColor.yellow
        NSLog("Button Pressed!")
    }
    func endCapsButtonTouched(){
        squareButton.backgroundColor = UIColor.black
        roundButton.backgroundColor = UIColor.orange
        buttButton.backgroundColor = UIColor.red
        NSLog("Button Pressed!")
    }
    var getbuttButton: UIButton {return buttButton}
    var getRoundButton: UIButton {return roundButton}
    var getsquareButton: UIButton {return squareButton}
    
}
