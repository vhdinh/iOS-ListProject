//
//  SpankingDetailsViewController.swift
//  ListProject
//
//  Created by Vu Dinh on 5/11/16.
//  Copyright © 2016 Vu Dinh. All rights reserved.
//

import UIKit

class SpankingDetailsViewController: UITableViewController {
    weak var cancelButtonDelegate: CancelButtonDelegate?
    

    @IBAction func cancelButtonPressed(sender: UIBarButtonItem) {
        cancelButtonDelegate?.cancelButtonPressedFrom(self)

    }
    
    
}
