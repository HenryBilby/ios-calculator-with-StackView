//
//  ViewController.swift
//  Calculadora_StackView
//
//  Created by Henry Bilby on 13/08/21.
//

import UIKit

class ViewController: UIViewController {

    enum Operation {
        case plus
        case minus
        case multiply
        case division
        case percentage
    }
    
    var operation : Operation = .plus
    var firstNumber : Int = 0
    var lastNumber : Int = 0
    
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var buttonPlusMinus: UIButton!
    @IBOutlet weak var buttonPercentage: UIButton!
    @IBOutlet weak var buttonDivision: UIButton!
    
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var buttonTimes: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonComa: UIButton!
    @IBOutlet weak var buttonEquals: UIButton!
    
    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let arrayButtonsNumbers : [UIButton] = [button1, button2, button3, button4, button5, button6, button7, button8, button9, button0, buttonComa]
        
        let arrayButtonsOperations : [UIButton] = [buttonPlus, buttonMinus, buttonTimes, buttonDivision, buttonEquals]
        
        let arrayButtonsOtherOperations : [UIButton] = [buttonAC, buttonPlusMinus, buttonPercentage]
        
        setButtonsNumbersCharacteristics(arrayButtonsNumbers)
        setButtonsOperationsCharacteristics(arrayButtonsOperations)
        setButtonsOthersOperations(arrayButtonsOtherOperations)
    }

    @IBAction func actionButton0(_ sender: Any) {
        appendTextToResultLabel(text: "0")
    }
    
    @IBAction func actionButton1(_ sender: Any) {
        appendTextToResultLabel(text: "1")
    }
    
    @IBAction func actionButton2(_ sender: Any) {
        appendTextToResultLabel(text: "2")
    }

    @IBAction func actionButton3(_ sender: Any) {
        appendTextToResultLabel(text: "3")
    }
    
    @IBAction func actionButton4(_ sender: Any) {
        appendTextToResultLabel(text: "4")
    }
    
    @IBAction func actionButton5(_ sender: Any) {
        appendTextToResultLabel(text: "5")
    }
    
    @IBAction func actionButton6(_ sender: Any) {
        appendTextToResultLabel(text: "6")
    }
    
    @IBAction func actionButton7(_ sender: Any) {
        appendTextToResultLabel(text: "7")
    }
    
    @IBAction func actionButton8(_ sender: Any) {
        appendTextToResultLabel(text: "8")
    }
    
    @IBAction func actionButton9(_ sender: Any) {
        appendTextToResultLabel(text: "9")
    }
    
    
    @IBAction func actionButtonDivision(_ sender: Any) {
        setFirstNumberAndOperation(op: .division)
    }
    
    @IBAction func actionButtonMultiply(_ sender: Any) {
        setFirstNumberAndOperation(op: .multiply)
    }
    
    @IBAction func actionButtonMinus(_ sender: Any) {
        setFirstNumberAndOperation(op: .minus)
    }
    
    @IBAction func actionButtonPlus(_ sender: Any) {
        setFirstNumberAndOperation(op: .plus)
    }
    
    
    @IBAction func actionButtonEquals(_ sender: Any) {
        switch operation {
        case .plus:
            lastNumber = Int(labelResult.text!) ?? 0
            labelResult.text = String(firstNumber + lastNumber)
        case .minus:
            lastNumber = Int(labelResult.text!) ?? 0
            labelResult.text = String(firstNumber - lastNumber)
        case .multiply:
            lastNumber = Int(labelResult.text!) ?? 0
            labelResult.text = String(firstNumber * lastNumber)
        case .division:
            lastNumber = Int(labelResult.text!) ?? 0
            labelResult.text = String(firstNumber / lastNumber)
        case .percentage:
            print ("Not implemented yet")
        }

    }
    
    @IBAction func actionButtonAC(_ sender: Any) {
        clearLabel()
        firstNumber = 0
        lastNumber = 0
    }
    
    func appendTextToResultLabel(text : String){
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        
        labelResult.text?.append(text)
    }
    
    func setFirstNumberAndOperation(op:Operation){
        firstNumber = Int(labelResult.text!) ?? 0
        operation = op
        clearLabel()
    }
    
    func clearLabel () {
        labelResult.text = "0"
    }
    
    func setButtonsNumbersCharacteristics(_ arrayButtonsNumbers : [UIButton]){
        for button in arrayButtonsNumbers {
            button.backgroundColor = UIColor.darkGray
            button.setTitleColor(.white, for: .normal)
            if (button == button0) {
//                button.layer.cornerRadius = 50
            } else {
//                button.layer.cornerRadius = button.frame.width/2
            }
            
        }
    }

    func setButtonsOperationsCharacteristics(_ arrayButtonsOperations : [UIButton]){
        for button in arrayButtonsOperations {
            button.backgroundColor = UIColor.orange
            button.setTitleColor(.white, for: .normal)
//            button.layer.cornerRadius = button.frame.width/2
        }
    }
    
    func setButtonsOthersOperations(_ arrayButtonsOtherOperations : [UIButton]) {

        for button in arrayButtonsOtherOperations {
            button.backgroundColor = UIColor.lightGray
            button.setTitleColor(.black, for: .normal)
//            button.layer.cornerRadius = button.frame.width/2
        }
        
    }
    
}

