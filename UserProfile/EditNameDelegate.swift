//
//  EditNameDelegate.swift
//  UserProfile
//
//  Created by Elena Goroshko on 10/25/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

protocol EditNameDelegate {
    
    func EditName(firstName : String, lastName : String, ageMore50 : Bool)
}
