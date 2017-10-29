//
//  EditNameDelegate.swift
//  UserProfile
//
//  Created by Elena Goroshko on 10/25/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

protocol EditNameDelegate {
    
    func  editName(firstName : String, lastName : String, ageMore50 : Bool)

    func userDidResetInfo()
}
