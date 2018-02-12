//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Matthew Byrne on 2/8/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        // create a label for the currency, on left of text field centered vertically
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8438865754, green: 0.8438865754, blue: 0.8438865754, alpha: 0.7979184503)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        // make sure label fits the current locale and currency
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        // add currency symbol from formatter, and add subview
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()        
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2537724743)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        // make sure that overriding draw rect doesn't affect previous styling
        clipsToBounds = true
   
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
