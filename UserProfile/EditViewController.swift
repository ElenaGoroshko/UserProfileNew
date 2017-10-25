//
//  EditViewController.swift
//  UserProfile
//
//  Created by Elena Goroshko on 10/24/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    var firstName : String = ""
    var lastName : String = ""
    var ageMore50 = false

    @IBOutlet private weak var textFieldFirstName: UITextField!
    @IBOutlet private weak var textFieldLastName: UITextField!
    @IBOutlet private weak var switchAge: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldFirstName.text = self.firstName
        self.textFieldLastName.text = self.lastName
        self.switchAge.isOn = self.ageMore50
    }

    @IBAction private func buttonEditOk(_ sender: UIButton) {

        if let tmp = self.textFieldFirstName.text {
            self.firstName = tmp
        }
        if let tmp = self.textFieldLastName.text {
            self.lastName = tmp
        }
        self.ageMore50 = self.switchAge.isOn
    }

    @IBAction private func switchAge(_ sender: UISwitch) {
    }

    @IBAction private func buttonClear(_ sender: UIButton) {
        self.textFieldFirstName.text = ""
        self.textFieldLastName.text = ""
        self.switchAge.isOn = false
    }
}


