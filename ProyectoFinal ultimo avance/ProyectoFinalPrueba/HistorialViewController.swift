//
//  HistorialViewController.swift
//  ProyectoFinalPrueba
//
//  Created by Usuario invitado on 11/20/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class HistorialViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var historialTable: UITableView!
    
    var move2: Int = 0
    var tag2: String = ""
    var date2 = Date()
    var pack = [info]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pack.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "move2", for: indexPath) as! HTableViewCell
        
        cell.Hmovement.text = String(pack[0].movementValuex)
        cell.Htag.text = pack[0].tagx
        cell.Hdate.text = "6/12/2018"
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pack.append(info(movementValuex: move2, tagx: tag2, datex: date2))
       
    }
    //carrito2.append(juegos(items: "The Witcher 3: Wild Hunt Complete Edition", pics: "TW", price: "$800" ))
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(pack[indexPath.row].movementValuex)
        let cell = tableView.cellForRow(at: indexPath)
    }
    
    //cosas de la tabla :v
    
    

}
