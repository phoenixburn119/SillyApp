//
//  ViewController.swift
//  SillyApp
//
//  Created by Kinzer, Adam on 12/17/15.
//  Copyright © 2015 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeRed(sender: UISlider)
    {
        let newRed = CGFloat(Double(sender.value))
        
        view.backgroundColor = UIColor(red: newRed, green: CGFloat(0.134), blue: CGFloat(0.745), alpha: 1.0)
    }

    @IBAction func ColorSwitch(sender: UISwitch)
    {
        if(sender.on)
        {
           view.backgroundColor = UIColor(red: CGFloat(0.999), green: CGFloat(0.134), blue: CGFloat(0.745), alpha: 1.0)
        }
        else
        {
            view.backgroundColor = UIColor(red: CGFloat(0.001), green: CGFloat(0.134), blue: CGFloat(0.745), alpha: 1.0)
        }
    }
    
    @IBAction func ColorButton(sender: AnyObject)
    {
        let RedColor = CGFloat(arc4random_uniform(4))
        let BlueColor = CGFloat(arc4random_uniform(2))
        let GreenColor = CGFloat(arc4random_uniform(3))
        
        view.backgroundColor = UIColor(red: RedColor, green: GreenColor, blue: BlueColor, alpha: 1.0)
    }
    
}

