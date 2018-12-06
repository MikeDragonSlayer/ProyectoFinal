//
//  ViewController.swift
//  ProyectoFinalPrueba
//
//  Created by Miguel Soto on 25/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var Total: UILabel!
    var actualValue: Int = 0
    var table = [info]()
    var test: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Total.text = String(actualValue)
       
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Jormungardr"{
            
            var sendedValue = segue.destination as! ModalViewController
            sendedValue.actual = actualValue
           
        }
        if segue.identifier == "Loki"{
            var masDatos = segue.destination as! HistorialViewController
            masDatos.tag2 = table[0].tagx
            masDatos.move2 = table[0].movementValuex
            masDatos.date2 = table[0].datex
        }
        
    }
    
    
    @IBAction func sendActualValue(_ sender: UIButton) {
        
    }
    
    @IBAction func Historial(_ sender: UIButton) {
        
    }
    
    @IBAction func Admin(_ sender: UIButton) {
        
    }
    
    @IBAction func Stats(_ sender: UIButton) {
        
        print(test = table[0].tagx)
    }
    
    @IBAction func Notes(_ sender: UIButton) {
        
    }
    
    @IBAction func update(_ sender: UIButton) {
        Total.text = String(actualValue)
        if actualValue < 0 {
            Total.textColor = UIColor.red
        } else {
            Total.textColor = UIColor.green
        }
        
    }
    
    @IBAction func unwindSecondView( segue: UIStoryboardSegue){
        
    }
   
}


