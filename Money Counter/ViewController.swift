//
//  ViewController.swift
//  Money Counter
//
//  Created by Bryan Hernandez on 12/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pennyTextField: UITextField!
    @IBOutlet weak var nickelTextField: UITextField!
    @IBOutlet weak var dimeTextField: UITextField!
    @IBOutlet weak var quarterTextField: UITextField!
    
    @IBOutlet weak var dollarTextField: UITextField!
    @IBOutlet weak var fiveTextField: UITextField!
    @IBOutlet weak var tenTextField: UITextField!
    @IBOutlet weak var twentyTextField: UITextField!
    @IBOutlet weak var fiftyTextField: UITextField!
    @IBOutlet weak var hundredTextField: UITextField!
    
    @IBOutlet weak var pennyRollTextField: UITextField!
    @IBOutlet weak var nickelRollTextField: UITextField!
    @IBOutlet weak var dimeRollTextField: UITextField!
    @IBOutlet weak var quarterRollTextField: UITextField!
    
    @IBOutlet weak var grandTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toolBar = UIToolbar() //this adds a toolbar to the keyboards to allow users to exit the keyboard
        toolBar.sizeToFit()
        
        let doneButton =  UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        pennyTextField.inputAccessoryView = toolBar
        nickelTextField.inputAccessoryView = toolBar
        dimeTextField.inputAccessoryView = toolBar
        quarterTextField.inputAccessoryView = toolBar
        
        dollarTextField.inputAccessoryView = toolBar
        fiveTextField.inputAccessoryView = toolBar
        tenTextField.inputAccessoryView = toolBar
        twentyTextField.inputAccessoryView = toolBar
        fiftyTextField.inputAccessoryView = toolBar
        hundredTextField.inputAccessoryView = toolBar
        
        pennyRollTextField.inputAccessoryView = toolBar
        nickelRollTextField.inputAccessoryView = toolBar
        quarterRollTextField.inputAccessoryView = toolBar
        dimeRollTextField.inputAccessoryView = toolBar
    }
    
    @objc func doneClicked(){
        view.endEditing(true)
    }
    
    /*
     * in the getTotal mehtod we take the number value of each
     * coin/bill and do the math to what it equals. For example,
     * 2 nickels would 2*0.05, which would give us the total of
     * 0.10.
     */
    @IBAction func getTotal(_ sender: Any) {
        var total = 0.0;
        
        let penny = Double(pennyTextField.text!) ?? 0
        total += (penny * 0.01)
        
        let nickel = Double(nickelTextField.text!) ?? 0
        total += (nickel * 0.05)
        
        let dime = Double(dimeTextField.text!) ?? 0
        total += (dime * 0.10)
        
        let quarter = Double(quarterTextField.text!) ?? 0
        total += (quarter * 0.25)
        
        let one = Double(dollarTextField.text!) ?? 0
        total += (one * 1.00)
        
        let five = Double(fiveTextField.text!) ?? 0
        total += (five * 5.00)
        
        let ten = Double(tenTextField.text!) ?? 0
        total += (ten * 10.00)
        
        let twenty = Double(twentyTextField.text!) ?? 0
        total += (twenty * 20.00)
        
        let fifty = Double(fiftyTextField.text!) ?? 0
        total += (fifty * 50.00)
        
        let hundred = Double(hundredTextField.text!) ?? 0
        total += (hundred * 100.00)
        
        let pennyRoll = Double(pennyRollTextField.text!) ?? 0
        total += (pennyRoll * 0.50)
        
        let nickelRoll = Double(nickelRollTextField.text!) ?? 0
        total += (nickelRoll * 2.00)
        
        let dimeRoll = Double(dimeRollTextField.text!) ?? 0
        total += (dimeRoll * 5.00)
        
        let quarterRoll = Double(quarterRollTextField.text!) ?? 0
        total += (quarterRoll * 10.00)
        
        grandTotalLabel.text = String(format: "%.2f", Double(total))
        
    }
    
    
}

