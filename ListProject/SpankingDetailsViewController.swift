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
    weak var delegate : SpankingDetailsViewControllerDelegate?
    @IBOutlet weak var newSpankingTextField: UITextField!
    

    @IBAction func cancelButtonPressed(sender: UIBarButtonItem) {
        cancelButtonDelegate?.cancelButtonPressedFrom(self)

    }
    
    @IBAction func doneBarButtonPressed(sender: UIBarButtonItem) {
        delegate?.spankingDetailsViewController(self, didFinishAddingSpanking: newSpankingTextField.text!)

    }

    
}
