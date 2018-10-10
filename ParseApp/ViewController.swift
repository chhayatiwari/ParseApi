//
//  ViewController.swift
//  ParseApp
//
//  Created by Chhaya Tiwari on 10/10/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    /* let person = PFObject(className: "People")
        person.setValue("Chhaya", forKey: "FirstName")
        person.setValue("Tiwari", forKey: "LastName")
        person.saveInBackground() */
      //  saveDataToParse()
        retreiveDatabase()
    }

    func retreiveDatabase() {
        let query = PFQuery(className: "People")
        query.findObjectsInBackground { (objects, error) in
            if let object = objects {
                print(object)
            }
            else {
                print(error?.localizedDescription)
            }
        }
    }
    
    func saveDataToParse() {
        let person = PFObject(className: "People")
        person["FirstName"] = "Sharad"
        person["LastName"] = "Tiwari"
        
        person.saveInBackground()
    }

}

