//
//  ViewController.swift
//  GasCalculator
//
//  Created by retina on 22/01/19.
//  Copyright © 2019 retina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gasolina: UITextField!
    @IBOutlet var ethanol: UITextField!
    @IBOutlet var message: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        message.text = "Click to calculate"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculate(sender: Any) {
        let gas: Double! = Double(gasolina.text!)
        let eth: Double! = Double(ethanol.text!)
        if ((gas * 0.70) > eth) {
            message.text = "Ethanol"
        } else {
            message.text = "Gasolina"
        }
    }

}

