//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dice1.image = UIImage(named: "Dice2")
        dice2.image = UIImage(named: "Dice5")
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func button1(_ sender: UIButton) {
        
        let firstNumber = arc4random_uniform(5) + 1
        
        let secondNumber = arc4random_uniform(5) + 1
        label.text = ("\(firstNumber + secondNumber)")
        
        let total = firstNumber + secondNumber
        
       
                
        print("the sum is: \(total)")
        
        if total > 7{
            let jeremyGif = UIImage.gifImageWithName("Win")
                    let imageView = UIImageView(image: jeremyGif)
                    imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 250.0)
                    view.addSubview(imageView)
            print("Win")
        }
        else {
            let jeremyGif = UIImage.gifImageWithName("lost")
                    let imageView = UIImageView(image: jeremyGif)
                    imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 250.0)
                    view.addSubview(imageView)
            print("loose")
        }
        
        
        
       dice1.image = UIImage(named: "Dice\(firstNumber)")
        dice2.image = UIImage(named: "Dice\(secondNumber)")
    

        }
    
    
    @IBAction func button2(_ sender: Any) {
        let firstNumber = arc4random_uniform(5) + 1
        let secondNumber = arc4random_uniform(5) + 1
        label.text = ("\(firstNumber + secondNumber)")
        
        let total = firstNumber + secondNumber
                
        print("the sum is: \(total)")
        
        if total < 7{
            let jeremyGif = UIImage.gifImageWithName("win")
                    let imageView = UIImageView(image: jeremyGif)
                    imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 250.0)
                    view.addSubview(imageView)
                    
            print("Win")
        }
        else {
            let jeremyGif = UIImage.gifImageWithName("lost")
                    let imageView = UIImageView(image: jeremyGif)
                    imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 250.0)
                    view.addSubview(imageView)
                    
            print("Lost")
        }
        
        
        
       dice1.image = UIImage(named: "Dice\(firstNumber)")
        dice2.image = UIImage(named: "Dice\(secondNumber)")
    

        }
    }
    
                
    
    
    
    
    

