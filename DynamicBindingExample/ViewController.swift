//
//  ViewController.swift
//  DynamicBindingExample
//
//  Created by Sergey Gernyak on 7/16/17.
//  Copyright © 2017 Brain Amsterdam. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var firstNumberSlider: NSSlider!
    @IBOutlet weak var secondNumberSlider: NSSlider!
    @IBOutlet weak var firstNumberLabel: NSTextField!
    @IBOutlet weak var secondLabelLabel: NSTextField!
    @IBOutlet weak var resultLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func firstNumberSliderChanged(_ sender: Any) {
        self.firstNumberLabel.stringValue = self.firstNumberSlider.stringValue
        multiplication(firstNumber: self.firstNumberSlider.floatValue, secondNumber: self.secondNumberSlider.floatValue)
    }

    @IBAction func secondNumberSliderChanged(_ sender: Any) {
        self.secondLabelLabel.stringValue = self.secondNumberSlider.stringValue
        multiplication(firstNumber: self.firstNumberSlider.floatValue, secondNumber: self.secondNumberSlider.floatValue)
    }
    
    func multiplication(firstNumber: Float, secondNumber: Float) {
        let multiplicationValue = firstNumber * secondNumber
        self.resultLabel.floatValue = multiplicationValue
    }
    
}

