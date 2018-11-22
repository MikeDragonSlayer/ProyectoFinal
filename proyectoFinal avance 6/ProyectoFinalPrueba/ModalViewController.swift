
import UIKit

class ModalViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var Movement: UITextField!
    
    @IBOutlet weak var tag: UITextField!

    var information = [info]()
    var movement: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        self.Movement.delegate = self
        
        //movement = Int(Movement.text!)

      //  guard let move = movement else {return}
        //move = movement!
        //guard let move = movement else {return}
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath = ShopTable.indexPathForSelectedRow
        
        let move1 = segue.destination as! HistorialViewController
        detName.item = items[(indexPath?.row)!]
        let tag1 = segue.destination as! HistorialViewController
        detPicture.image = UIImage(named: pics[(indexPath?.row)!])!
        let date1 = segue.destination as! HistorialViewController
        detPrice.price = price[(indexPath?.row)!]
    } */
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    @IBAction func More(_ sender: UIButton) {
        let FloatMovement :Float? = Float(Movement.text!)
        information.append(info(movementValuex: FloatMovement! , tagx: tag.text! , datex: Date() ))
        print(information)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Less(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Cancel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
