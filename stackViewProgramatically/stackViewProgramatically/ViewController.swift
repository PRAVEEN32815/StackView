//
//  ViewController.swift
//  stackViewProgramatically
//
//  Created by Arun Muthukumar on 10/03/21.
//  Copyright © 2021 Arun Muthukumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var safeArea = UILayoutGuide()
    let stack : UIStackView = UIStackView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    let topLabel : UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
    let button1 : UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    let button2 : UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    let button3 : UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    let imgView : UIImageView = UIImageView(image: #imageLiteral(resourceName: "Background"))


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        safeArea = view.layoutMarginsGuide
        
        view.addSubview(imgView)
        
        view.addSubview(stack)
        stackSetup()
        stackConstraints()
        
        view.addSubview(topLabel)
        topLabelSetup()
        topLabelConstraint()
        
        
        button1Setup()
        button1Constraint()
        
        button2Setup()
        button2Constraint()
        
        button3Setup()
        button3Constraint()
        
    }
    
    func stackSetup(){
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 10
        stack.addArrangedSubview(button1)
        stack.addArrangedSubview(button2)
        stack.addArrangedSubview(button3)
    }
    
    func stackConstraints(){
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        stack.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 0).isActive = true
        stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }
    
    func topLabelSetup(){
        topLabel.text = "Social Login"
        topLabel.textColor = .black
        topLabel.textAlignment = .center
        topLabel.numberOfLines = 2
        
        
    }
    
    func topLabelConstraint(){
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        
        topLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 50).isActive = true
        topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        topLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func button1Setup() {
        
        button1.setBackgroundImage(#imageLiteral(resourceName: "FB"), for: .normal)
        button1.setTitle("Log in with Facebook", for: .normal)
        button1.setTitleColor(.white, for: .normal)
    }
    
    func button1Constraint(){
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func button2Setup(){
        button2.setBackgroundImage(#imageLiteral(resourceName: "Google"), for: .normal)
        button2.setTitle("Log in with Google", for: .normal)
        button2.setTitleColor(.black , for: .normal)
    }
    
    func button2Constraint(){
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func button3Setup(){
        button3.setBackgroundImage(#imageLiteral(resourceName: "Email"), for: .normal)
        button3.setTitle("Log in with Email ", for: .normal)
        button3.setTitleColor(.black, for: .normal)
    }
    
   func button3Constraint(){
       button3.translatesAutoresizingMaskIntoConstraints = false
       button3.heightAnchor.constraint(equalToConstant: 60).isActive = true
   }
   praveen

  
}

