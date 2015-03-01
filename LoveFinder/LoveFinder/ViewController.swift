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
        let sexText = sex_.titleForSegmentAtIndex(sex_.selectedSegmentIndex)
        
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        let components = gregorian?.components(NSCalendarUnit.YearCalendarUnit, fromDate: birthday.date, toDate: NSDate(), options: NSCalendarOptions(0))
        let age = components?.year
        
        let hasHourse = hourse_.on ? "有房" : "没房"
        
        show_.text = "\(name_.text), \(sexText!), \(age!)岁, 身高\(height_.text!), \(hasHourse), 求交往！"
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

