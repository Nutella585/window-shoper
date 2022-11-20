//
//  Wage.swift
//  window-shoper
//
//  Created by Andrew Pylo on 20.11.2022.
//

import Foundation

class Wage {
    class func getWage (forWage wage: Float, andPrice price: Float) -> Int {
        return Int(ceil(price / wage))
    }
}
