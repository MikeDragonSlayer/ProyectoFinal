
import UIKit

class ModalViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var Movement: UITextField!
    
    @IBOutlet weak var tag: UITextField!

    var information = [info]()
    var movement: Int = 100
    var actual: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        self.Movement.delegate = self
        movement = actual + 100
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        let move1 = segue.destination as! HistorialViewController
        move1.move2 = 1
        let tag1 = segue.destination as! HistorialViewController
        tag1.tag2 = "xd"
        let date1 = segue.destination as! HistorialViewController
        date1.date2 = ":v"
        
        //importante: convertir el segue a un segue con arreglos y colocarlo dentro de un "if"
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    @IBAction func More(_ sender: UIButton) {
        let IntMovement :Int? = Int(Movement.text!)
        guard IntMovement != nil else {return}
            information.append(info(movementValuex: IntMovement! , tagx: tag.text! , datex: Date() ))
            movement = actual + IntMovement!
        
            dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Less(_ sender: UIButton) {
        let IntMovement :Int? = Int(Movement.text!)
        guard IntMovement != nil else {return}
            information.append(info(movementValuex: (-1*IntMovement!) , tagx: tag.text! , datex: Date() ))
            movement = actual + IntMovement!
            print(information)
        
            dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Cancel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
