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

    @IBAction func backToProfileScreen(sender: UIStoryboardSegue){

        if let dest = sender.source as? EditViewController  {
            self.ageMore50 = dest.ageMore50
            self.firstName = dest.firstName
            self.lastName = dest.lastName
            self.labelFirstName.text = self.firstName
            self.labelLastName.text = self.lastName
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showEditScreenSegue",
            let dest = segue.destination as? EditViewController  {
                dest.ageMore50 = self.ageMore50
                dest.firstName = self.firstName
                dest.lastName = self.lastName
        }
    }


}
