//
//  PathView.swift
//  BezierPathTest
//
//  Created by cr3w on 07.03.2020.
//  Copyright © 2020 Dmitriy Holovnia. All rights reserved.
//

import UIKit

class PathView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
//        first()()
        second()
        
    }
    
    func first() {
        let pathRect3 = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height / 2)
        let path3 = UIBezierPath(roundedRect: pathRect3, cornerRadius: 10)
        path3.addClip()
        
        let pathRect1 = CGRect(x: 10, y: 10, width: self.frame.width - 20, height: self.frame.height - 20)
        let path1 = UIBezierPath(roundedRect: pathRect1, cornerRadius: 10)
        let color1 = UIColor.yellow
        color1.setFill()
        path1.fill()
        
        let pathRect2 = CGRect(x: 20, y: 20, width: self.frame.width - 40, height: self.frame.height - 40)
        let path2 = UIBezierPath(roundedRect: pathRect2, cornerRadius: 10)
        let color2 = UIColor.purple
        color2.setFill()
        path2.fill()
    }
    
    func second() {
        
        let center = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        let path = UIBezierPath(arcCenter: center, radius: 100, startAngle: 0, endAngle: 360, clockwise: true)
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.strokeEnd = 0
        layer.lineWidth = 10
        layer.strokeColor = UIColor.orange.cgColor
        layer.fillColor = UIColor.white.cgColor
        
        self.layer.addSublayer(layer)
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.toValue = 1
        animation.duration = 3
        animation.autoreverses = true
        animation.repeatCount = .infinity
        
        layer.add(animation, forKey: "line")
//        let color = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
//
//        color.setStroke()
//        path.lineWidth = 10
//        path.stroke()
    }
    
}
