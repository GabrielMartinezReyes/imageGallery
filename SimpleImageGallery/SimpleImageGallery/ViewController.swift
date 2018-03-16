//
//  ViewController.swift
//  SimpleImageGallery
//
//  Created by Gabriel Martinez on 2018-03-16.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    
    var imageInt = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        backButton.layer.cornerRadius = 5.0
        nextButton.layer.cornerRadius = 5.0
        imageView.layer.cornerRadius = 5.0
        
        self.imageGallery()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backButtonPress(_ sender: Any) {
        
        imageInt -= 1
        self.imageGallery()
        
    }
    
    
    
    @IBAction func nextButtonPress(_ sender: Any) {
        
        imageInt += 1
        self.imageGallery()
    
    }
    
    func imageGallery(){
        
        label.text = String("\(imageInt)/6")
        
        imageView.image = UIImage(named: "Image\(imageInt)")
        
        if imageInt == 1 {
            
            backButton.isEnabled = false
            backButton.alpha = 0.25
            
        } else if imageInt == 6 {
            
            nextButton.isEnabled = false
            nextButton.alpha = 0.25
        }else{
            
            backButton.isEnabled = true
            nextButton.isEnabled = true
            
            backButton.alpha = 1
            nextButton.alpha = 1
            
            
            
        }
    }
    
    
}

