
import UIKit

class ModalViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var Movement: UITextField!
    
    @IBOutlet weak var tag: UITextField!

    var move: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        self.Movement.delegate = self
        var movement: Int? = Int(Movement.text!)
        guard let move = movement else {return}
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    @IBAction func More(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Less(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Cancel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
