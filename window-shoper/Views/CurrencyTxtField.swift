//
//  CurrencyTxtField.swift
//  window-shoper
//
//  Created by Andrew Pylo on 17.11.2022.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {

    // Draw a small dollar $ sign near text fields.
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        
        let currencyLbl = UILabel(frame: CGRect(x: 10, y: ((frame.size.height / 2) - size / 2), width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true

        let formmater = NumberFormatter()
        formmater.numberStyle = .currency
        formmater.locale = .current
        currencyLbl.text =  formmater.currencySymbol
        
        addSubview(currencyLbl)
    }
    
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
        
        clipsToBounds = true
        
        if let placeholderSB = placeholder {
            let placeholder = NSAttributedString(string: placeholderSB, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5374415391)])
            attributedPlaceholder = placeholder;
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1);
        }
    }
    
}
