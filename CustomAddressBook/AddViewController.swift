 //
//  AddViewController.swift
//  CustomAddressBook
//
//  Created by THE HOTSHOT on 2017-09-26.
//  Copyright © 2017 THE HOTSHOT. All rights reserved.
//

import Foundation
import UIKit
 
 class AddViewController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    var person: Person?
    
    /*@IBAction func addButtonPressed(sender: UIButton){
        //NSLog("Button Pressed")
        
        if person == nil{
            if let p = Person(firstName: firstNameField.text!){
                person = p
                
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                appDelegate.contactsArray.append(person!)
            }else{
                let alert = UIAlertController(title: "Error", message: "Error creating contact", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)

                return
            }
        }
        
        do{
            try person!.setFirstName(fn: firstNameField.text!)
            try person!.setLastName(ln: lastNameField.text!)
            try person!.setPhone(pn: phoneField.text!)
            try person!.setEmail(em: emailField.text!)
        }catch let error as PersonValidationError{
            var errorMsg = ""
            
            switch(error){
            case .InvalidFirstName:
                errorMsg = "Invalid First Name"
            case .InvalidPhone:
                errorMsg = "Invalid Phone Number"
            case .InvalidEmail:
                errorMsg = "Invalid Email Address"
            }
            
            let alert = UIAlertController(title: "Error", message: errorMsg, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }catch{
            
        }
        
            self.navigationController?.popViewController(animated: true)
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismisskeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismisskeyboard(){
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
 }
