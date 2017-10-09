//
//  DetailViewController.swift
//  CustomAddressBook
//
//  Created by THE HOTSHOT on 2017-09-26.
//  Copyright © 2017 THE HOTSHOT. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var divisionLabel: UILabel?
    @IBOutlet weak var departmentLabel: UILabel?
    @IBOutlet weak var businessPhoneButton: UIButton?
    @IBOutlet weak var homePhoneButton: UIButton?
    @IBOutlet weak var cellularPhoneButton: UIButton?
    @IBOutlet weak var roleLabel: UILabel?
    
    /*@IBOutlet weak var firstNameLabel: UILabel?
    @IBOutlet weak var lastNameLabel: UILabel?
    @IBOutlet weak var phoneButton: UIButton?
    @IBOutlet weak var emailButton: UIButton?*/
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            self.title = detail.name
            
            nameLabel?.text = detail.name
            divisionLabel?.text = detail.division
            departmentLabel?.text = detail.department
            businessPhoneButton?.setTitle(detail.businessPhone, for: .normal)
            homePhoneButton?.setTitle(detail.homePhone, for: .normal)
            cellularPhoneButton?.setTitle(detail.cellularPhone, for: .normal)
            roleLabel?.text = detail.role
            /*lastNameLabel?.text = detail.lastName
            phoneButton?.setTitle(detail.phone, for: .normal)
            emailButton?.setTitle(detail.email, for: .normal)*/
            
        }
    }
    
    @IBAction func cellularPhoneButtonPressed(sender: UIButton){
        if let cPhone = detailItem?.cellularPhone{
            /*if let url = NSURL(string: "tel://\(phone)"){
                UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
            }*/
            if let url = URL(string: "tel://\(cPhone)"), UIApplication.shared.canOpenURL(url) {
                if #available(iOS 10, *) {
                    UIApplication.shared.open(url)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        }
    }
    
    /*@IBAction func emailButtonPressed(sender: UIButton){
        if let email = detailItem?.email{
            if let url = URL(string:"mailto:\(email)"){
                UIApplication.shared.open(url as URL)
            }
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Person? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

