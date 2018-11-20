//
//  ViewController.swift
//  ProyectoFinalPrueba
//
//  Created by Usuario invitado on 25/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var Total: UILabel!
    let value = String(format: "%d")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Total.text = value
        
    }
    
    @IBAction func Historial(_ sender: UIButton) {
    }
    
    @IBAction func Admin(_ sender: UIButton) {
    }
    
    @IBAction func Stats(_ sender: UIButton) {
    }
    
    @IBAction func Reset(_ sender: UIButton) {
    }
    
}

