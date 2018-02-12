//
//  Wage.swift
//  window-shopper
//
//  Created by Matthew Byrne on 2/12/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }

}
