//
//  ViewController.swift
//  LoveFinder
//
//  Created by tujiaw on 15/3/1.
//  Copyright (c) 2015年 tujiaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name_: UITextField!
    @IBOutlet weak var sex_: UISegmentedControl!
    @IBOutlet weak var birthday: UIDatePicker!
    @IBOutlet weak var heightNumber_: UISlider!
    @IBOutlet weak var height_: UILabel!
    @IBOutlet weak var hourse_: UISwitch!
    @IBOutlet weak var show_: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name_.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func heightChanged(sender: AnyObject) {
        var slider = sender as UISlider
        var newHeight = Int(slider.value)
        slider.value = Float(newHeight)
        height_.text = "\(newHeight)cm"
    }

    @IBAction func okClicked(sender: AnyObject) {
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

