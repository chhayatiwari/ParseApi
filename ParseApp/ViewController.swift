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
     let person = PFObject(className: "People")
        person.setValue("Chhaya", forKey: "FirstName")
        person.setValue("Tiwari", forKey: "LastName")
        person.saveInBackground()
    }


}

