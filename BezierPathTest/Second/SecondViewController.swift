//
//  SecondViewController.swift
//  BezierPathTest
//
//  Created by cr3w on 10.03.2020.
//  Copyright © 2020 Dmitriy Holovnia. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    private let shapeLayer = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
        draw()
    }
    
    func draw() {
        let center = view.center
        
        let path = UIBezierPath(arcCenter: center, radius: 100, startAngle: -(CGFloat.pi / 2), endAngle: 2*CGFloat.pi, clockwise: true)
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.strokeEnd = 0
        shapeLayer.lineCap = CAShapeLayerLineCap.round // corner radius
        
        view.layer.addSublayer(shapeLayer)
    }
    
    @objc func handleTap() {
        print("Ok")
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 2
//        basicAnimation.
        basicAnimation.fillMode = .forwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: "custom")
    }
}
