//
//  Person.swift
//  CustomAddressBook
//
//  Created by THE HOTSHOT on 2017-10-01.
//  Copyright © 2017 THE HOTSHOT. All rights reserved.
//

import Foundation

enum PersonValidationError: Error{
    case InvalidFirstName
    case InvalidPhone
    case InvalidEmail
}
class Person {
    private(set) var division: String?
    private(set) var department: String?
    private(set) var name: String?
    private(set) var businessPhone: String?
    private(set) var homePhone: String?
    private(set) var cellularPhone: String?
    private(set) var role: String?
    
    /*private(set) var firstName: String?
    private(set) var lastName: String?
    private(set) var phone: String?
    private(set) var email: String?*/
    
    init?(name: String, division: String, department: String, businessPhone: String, homePhone: String, cellularPhone: String, role: String){
        //do{
            //try{
                self.setName(nam: name)
                self.setDivision(div: division)
                self.setDepartment(dep: department)
                self.setBusinessPhone(bPhone: businessPhone)
                self.setHomePhone(hPhone: homePhone)
                self.setCellularPhone(cPhone: cellularPhone)
                self.setRole(rol: role)
           // }
        //}catch{
           // return nil
       // }
    }
    /*init?(firstName fn: String) {
        //firstName = fn
        do{
            try setFirstName(fn: fn)
        } catch{
            return nil
        }
    }*/
    func setDivision(div: String){
        division = div
    }
    
    func setDepartment(dep: String){
        department = dep
    }
    
    func setName(nam: String){
        name = nam
    }
    
    func setBusinessPhone(bPhone: String){
        businessPhone = bPhone
    }
    
    func setHomePhone(hPhone: String){
        homePhone = hPhone
    }
    
    func setCellularPhone(cPhone: String){
        cellularPhone = cPhone
    }
    
    func setRole(rol: String){
        role = rol
    }
    
    /*func setFirstName(fn: String) throws {
        if(fn.characters.count < 1){
            throw PersonValidationError.InvalidFirstName
        }
            firstName = fn
    }*/
    
    /*func setLastName(ln: String) throws {
        if(ln.characters.count < 1){
            throw PersonValidationError.InvalidFirstName
        }
            lastName = ln
    }*/
    
    /*func setPhone(pn: String) throws {
        /*if(pn.characters.count != 0){
            let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
            let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
            let result = phoneTest.evaluate(with: pn)
            if(!result){
                throw PersonValidationError.InvalidPhone
            }
        }*/
        phone = pn
    }*/
    
    /*func setEmail(em: String) throws {
        if(em.characters.count != 0){
            let emailRegEx = "^(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?(?:(?:(?:[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+(?:\\.[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+)*)|(?:\"(?:(?:(?:(?: )*(?:(?:[!#-Z^-~]|\\[|\\])|(?:\\\\(?:\\t|[ -~]))))+(?: )*)|(?: )+)\"))(?:@)(?:(?:(?:[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)(?:\\.[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)*)|(?:\\[(?:(?:(?:(?:(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))\\.){3}(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))))|(?:(?:(?: )*[!-Z^-~])*(?: )*)|(?:[Vv][0-9A-Fa-f]+\\.[-A-Za-z0-9._~!$&'()*+,;=:]+))\\])))(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?$"
            let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
            let result = emailTest.evaluate(with: em)
            if(!result){
                throw PersonValidationError.InvalidEmail
            }
        }
        email = em
    }*/
}
