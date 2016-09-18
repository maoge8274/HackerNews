//
//  HNTableViewController.swift
//  HackerNews
//
//  Created by leohe on 16/9/18.
//
//

import UIKit

public class HNTableViewController:UITableViewController{
    
    public var refreshing:Bool = false {
        didSet{
            if(self.refreshing){
                if let refreshControl = self.refreshControl {
                    refreshControl.beginRefreshing()
                    refreshControl.attributedTitle = NSAttributedString(string: "Loading...")
                }
            }
            else{
                self.refreshControl?.endRefreshing()
                self.refreshControl?.attributedTitle = NSAttributedString(string:"Pull to Refresh")
            }
        }
    }
    
    public var datasource:NSArray!{
        didSet{
            self.tableView.reloadData()
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
