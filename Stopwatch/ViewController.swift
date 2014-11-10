//
//  ViewController.swift
//  Stopwatch
//
//  Created by Nancy Kim on 11/9/14.
//  Copyright (c) 2014 Udemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        count = 0
        time.text = "0"
    }
   
    @IBOutlet weak var time: UILabel!
    var count = 0
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //variable timer creates object NSTimer function runs "result" every 1 second which continues indefinitely.
        
        
    }
    
    func result() {
        count++
        time.text = String(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

