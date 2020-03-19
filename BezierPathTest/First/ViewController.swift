//
//  ViewController.swift
//  BezierPathTest
//
//  Created by cr3w on 07.03.2020.
//  Copyright © 2020 Dmitriy Holovnia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let pathView = PathView()
    
    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.setTitle("Tap", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(pathView)
        view.addSubview(button)
        pathView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pathView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            pathView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            pathView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            pathView.heightAnchor.constraint(equalToConstant: view.frame.width - 40),
            
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
    
    @objc func buttonTapped() {
        print(#function)
    }


}

