//
//  SpankingDetailsViewControllerDelegate.swift
//  ListProject
//
//  Created by Vu Dinh on 5/11/16.
//  Copyright © 2016 Vu Dinh. All rights reserved.
//

import Foundation

protocol SpankingDetailsViewControllerDelegate: class {
    func spankingDetailsViewController(controller: SpankingDetailsViewController, didFinishAddingSpanking spanking: String)
}