//
//  ViewController.swift
//  ActivityIndicatorV2
//
//  Created by David Duenow on 10/12/17.
//  Copyright © 2017 David Duenow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    //@IBOutlet weak var loadingButton: UIButton!
    //var animating: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleActivityIndicator(_ sender: UIButton) {
        if activityIndicator.isAnimating {
            activityIndicator.stopAnimating()
            //activityIndicator.isHidden = true
            sender.setTitle("Start Loading", for: .normal)
            //animating = false
        } else {
            activityIndicator.startAnimating()
            activityIndicator.isHidden = false
            sender.setTitle("Stop Loading", for: .normal)
            //animating = true
        }
    }
    
}

