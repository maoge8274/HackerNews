//
//  SplitViewController.swift
//  HackerNews
//
//  Created by leohe on 16/9/14.
//
//

import UIKit

class SplitViewController: UISplitViewController,UISplitViewControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.preferredDisplayMode = .AllVisible
        self.minimumPrimaryColumnWidth = 320.0
        
    }
    
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool {
        return true;
    }
    
    override func showDetailViewController(vc: UIViewController, sender: AnyObject?) {
        if vc.parentViewController is UINavigationController {
            super.showDetailViewController(vc, sender: sender)
        }else{
            let nav = UINavigationController(rootViewController: vc)
            super.showDetailViewController(nav, sender: sender)
        }
    }
    
}