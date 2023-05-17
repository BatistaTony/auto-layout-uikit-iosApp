//
//  ViewController.swift
//  auto-layout-and-constraints
//
//  Created by Batista Tone on 16/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    var backgroundImageView  = UIImageView()
    var buttonView = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        
    }
    
    
    func setBackground(){
      
        self.view.addSubview(backgroundImageView)

        backgroundImageView.backgroundColor = UIColor.red
        
        backgroundImageView.image = UIImage(named:"background.png")

        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.contentMode = .scaleToFill
        
        view.sendSubviewToBack(backgroundImageView)
    }
    
    
    func setupButton(){
        
        self.view.addSubview(buttonView)
        
        buttonView.titleLabel?.text  = "Login"
        buttonView.frame = CGRect(x: 50, y: 50, width: 200, height: 50)
        buttonView.backgroundColor = UIColor.green
        buttonView.tintColor = UIColor.white
        buttonView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        //buttonView.frame.width = 50
        
    }


}

