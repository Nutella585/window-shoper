//
//  ViewController.swift
//  window-shoper
//
//  Created by Andrew Pylo on 17.11.2022.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        calculateBtn.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        calculateBtn.setTitle       ("Calcualte", for: .normal)
        calculateBtn.setTitleColor  (#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calculateBtn.addTarget      (self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calculateBtn
        priceTxt.inputAccessoryView = calculateBtn
        
    }
    
    @objc func calculate () {
        print("Contorller -> MainVC: calculate() was performed.")
    }
    
}

