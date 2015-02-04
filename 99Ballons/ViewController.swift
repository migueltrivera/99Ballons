//
//  ViewController.swift
//  99Ballons
//
//  Created by Miguel T Rivera on 2/2/15.
//  Copyright (c) 2015 Miguel T Rivera. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    var ballons:[Ballon] = []
    
    @IBOutlet weak var ballonsLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!

    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.createBallons()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createBallons()
    {
        for(var ballonCount = 0; ballonCount <= 99; ballonCount++)
        {
            var ballon = Ballon()
            ballon.currentValue = ballonCount
            let randomNumber = Int(arc4random_uniform(UInt32(4) + 1))
            
            switch(randomNumber)
            {
                case 1: ballon.currentImage = UIImage(named: "Redballon1.jpg")
                
                case 2: ballon.currentImage = UIImage(named:"Redballon2.jpg")
                
                case 3: ballon.currentImage = UIImage(named: "Redballon3.jpg")
                
                case 4: ballon.currentImage = UIImage(named: "Redballon4.jpg")
                
                default: ballon.currentImage = UIImage(named: "BerlinTVTower.jpg")
            }
            self.ballons.append(ballon)
        }
    }//end createBallons
    
    @IBAction func nextBallonsButtonPressed(sender: UIBarButtonItem){
        
        let ballon = ballons[currentIndex]
        
        ballonsLabel.text = "\(ballon.currentValue) ballon"
        myImageView.image = ballon.currentImage
        currentIndex += 1
    }
}

