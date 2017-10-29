//
//  ProfileViewController.swift
//  UserProfile
//
//  Created by Elena Goroshko on 10/24/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    var firstName : String = ""
    var lastName : String = ""
    var ageMore50 = false

    @IBOutlet private weak var labelFirstName: UILabel!
    @IBOutlet private weak var labelLastName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.labelFirstName.text = self.firstName
        self.labelLastName.text = self.lastName

    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showEditScreenSegue",
            let dest = segue.destination as? EditViewController  {
                dest.ageMore50 = self.ageMore50
                dest.firstName = self.firstName
                dest.lastName = self.lastName
                dest.delegate = self
        }

    }
}

extension ProfileViewController : EditNameDelegate {

    func editName(firstName: String, lastName: String, ageMore50: Bool) {
        self.ageMore50 = ageMore50
        self.firstName = firstName
        self.lastName = lastName
        self.labelFirstName.text = self.firstName
        self.labelLastName.text = self.lastName
    }

    func userDidResetInfo(){
        self.ageMore50 = false
        self.firstName = ""
        self.lastName = ""
        self.labelFirstName.text = self.firstName
        self.labelLastName.text = self.lastName
    }

}
