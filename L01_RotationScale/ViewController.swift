//
//  ViewController.swift
//  L01_RotationScale
//
//  Created by Gary.nG on 2/21/16.
//  Copyright © 2016 Gary.nG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var image1: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label1.text = "萌寵 [ 家家 ]"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rotateBtnClicked(sender: AnyObject) {
        UIView.animateWithDuration(0.1, animations:({
            self.label1.transform = CGAffineTransformMakeRotation(30)
            self.btn1.transform = CGAffineTransformMakeRotation(60)
            self.image1.transform = CGAffineTransformMakeRotation(360)
            
        }))
        
    }
    @IBAction func rotateBtnCancel(sender: AnyObject) {
        UIView.animateWithDuration(0.1, animations:({
            self.label1.transform = CGAffineTransformMakeRotation(0)
            self.btn1.transform = CGAffineTransformMakeRotation(0)
            self.image1.transform = CGAffineTransformMakeRotation(0)
            
        }))
        
    }
    @IBAction func scaleBtnClicked(sender: AnyObject) {
        UIView.animateWithDuration(1.0, animations: ({
        self.btn1.transform = CGAffineTransformMakeScale(200, 200)
        
        }))
    }
    

}

