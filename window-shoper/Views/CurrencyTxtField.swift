//
//  CurrencyTxtField.swift
//  window-shoper
//
//  Created by Andrew Pylo on 17.11.2022.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
        drawView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        drawView()
    }

    func drawView() {
        
        backgroundColor     = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.343537415);
        layer.cornerRadius  = 5.0;
        textAlignment       = .center;
        
        if let placeholderSB = placeholder {
            let placeholder = NSAttributedString(string: placeholderSB, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5374415391)])
            attributedPlaceholder = placeholder;
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1);
        }
    }
    
}
