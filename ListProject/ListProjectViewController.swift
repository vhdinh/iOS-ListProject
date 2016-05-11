//
//  ViewController.swift
//  ListProject
//
//  Created by Vu Dinh on 5/11/16.
//  Copyright © 2016 Vu Dinh. All rights reserved.
//

import UIKit

class ListProjectViewController: UITableViewController, CancelButtonDelegate, SpankingDetailsViewControllerDelegate {

    var spankings = ["Dylan", "Kris"]
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AddNewSpanking" {
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! SpankingDetailsViewController
            controller.cancelButtonDelegate = self
            controller.delegate = self
        }
    }
    
    func spankingDetailsViewController(controller: SpankingDetailsViewController, didFinishAddingSpanking spanking: String) {
        dismissViewControllerAnimated(true, completion: nil)
        spankings.append(spanking)
        tableView.reloadData()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SpankingCell")!
        cell.textLabel?.text = spankings[indexPath.row]
        return cell
    }
    

    override func tableView(tableiew: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spankings.count
    }
    
    func cancelButtonPressedFrom(controller: UIViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

