//
//  AddNewItemController.swift
//  ListProject
//
//  Created by Michael Arbogast on 5/11/16.
//  Copyright © 2016 Vu Dinh. All rights reserved.
//

import UIKit

class AddNewItemController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    weak var cancelButtonDelegate: CancelButtonDelegate?
    @IBAction func cancelBarButtonPressed(sender: UIBarButtonItem) {
        print(sender)
//        CancelButtonDelegate?.cancelButtonPressedFrom(self)
    }
    
    
}