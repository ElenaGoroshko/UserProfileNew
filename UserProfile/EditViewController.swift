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

    var delegate : EditNameDelegate?

    @IBOutlet private weak var textFieldFirstName: UITextField!
    @IBOutlet private weak var textFieldLastName: UITextField!
    @IBOutlet private weak var switchAge: UISwitch!
    @IBOutlet private weak var labelHello: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldFirstName.text = self.firstName
        self.textFieldLastName.text = self.lastName
        self.switchAge.isOn = self.ageMore50
        if self.switchAge.isOn {
            self.labelHello.text = "Здравствуйте, \(self.firstName) \(self.lastName) !"
        } else {
            self.labelHello.text = "Привет, \(self.firstName) !"
        }
    }


    @IBAction private func buttonEditOk(_ sender: UIButton) {

        let fName = self.textFieldFirstName.text ?? "Undefined"
        let lName = self.textFieldLastName.text ?? "Undefined"
        let age = self.switchAge.isOn
        if self.switchAge.isOn {
            self.labelHello.text = "Здравствуйте, \(fName) \(lName) !"
        } else {
            self.labelHello.text = "Привет, \(fName) !"
        }

        delegate?.editName(firstName: fName, lastName: lName, ageMore50: age)

        navigationController?.popViewController(animated: true)
    }

    @IBAction private func buttonClear(_ sender: UIButton) {
        self.textFieldFirstName.text = ""
        self.textFieldLastName.text = ""
        self.switchAge.isOn = false
        self.labelHello.text = ""

        delegate?.userDidResetInfo()

    }
}


