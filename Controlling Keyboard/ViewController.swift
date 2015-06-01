//
//  ViewController.swift
//  Controlling Keyboard
//
//  Created by Anudeep Reddy Dwaram on 01/06/15.
//  Copyright (c) 2015 iDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

	@IBOutlet weak var textField: UITextField!
	
	@IBAction func show(sender: AnyObject) {
		label.text = textField.text
		label.hidden = false
	}
	
	@IBOutlet weak var label: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		// View controller is responsible for the textField
		self.textField.delegate = self
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
		self.view.endEditing(true)
	}
	
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		// Keyboard is the first responder to text field
		textField.resignFirstResponder()
		return true
	}

}

