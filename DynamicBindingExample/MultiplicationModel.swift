//
//  MultiplicationModel.swift
//  DynamicBindingExample
//
//  Created by Sergey Gernyak on 7/16/17.
//  Copyright © 2017 Brain Amsterdam. All rights reserved.
//

import Foundation

class MultiplicationModel: NSObject {
    dynamic var firstValue : Float = 0.0
    dynamic var secondValue : Float = 0.0
    
    dynamic var result : Float {
        get {
            return firstValue * secondValue
        }
    }
    
    dynamic class func keyPathsForValuesAffectingResult() -> Set<NSObject> {
        return ["firstValue" as NSObject, "secondValue" as NSObject]
    }
}
