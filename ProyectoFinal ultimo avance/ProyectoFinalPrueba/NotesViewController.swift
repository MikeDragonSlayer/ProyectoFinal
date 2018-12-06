//
//  NotesViewController.swift
//  ProyectoFinalPrueba
//
//  Created by Usuario invitado on 11/29/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let save = UserDefaults.standard
        if let dato = save.object(forKey: "dato") as? String{
            textView.text = dato
            }
        }

    @IBAction func Back(_ sender: UIButton) {
        let save = UserDefaults.standard
        
        if let dato2 = textView.text{
            save.set(dato2, forKey: "dato")
        }
        
    }
    
}
