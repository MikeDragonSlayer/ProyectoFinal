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
    var actualValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Total.text = String(actualValue)
        reloadInputViews()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Jormungardr"{
            
            var sendedValue = segue.destination as! ModalViewController
            sendedValue.actual = actualValue
        }
        
    }
    
    @IBAction func sendActualValue(_ sender: UIButton) {
        
    }
    
    @IBAction func Historial(_ sender: UIButton) {
        
    }
    
    @IBAction func Admin(_ sender: UIButton) {
        
    }
    
    @IBAction func Stats(_ sender: UIButton) {
    
    }
    
    @IBAction func Notas(_ sender: UIButton) {
    }
    
}

