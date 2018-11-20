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
    var value: Int = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Total.text = String(value)
        
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

