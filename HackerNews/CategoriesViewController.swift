//
//  CategoriesViewController.swift
//  HackerNews
//
//  Created by leohe on 16/9/14.
//
//

import UIKit
import HackerServiceSwift

protocol CategoriesViewControllerDelegate {
    func categoriesViewControllerDidSelecteFilter(controller:CategoriesViewController,filer:Post.PostFilter,title:String)
}

class CategoriesViewController: UITableViewController {
    var delegate:CategoriesViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


extension CategoriesViewController{
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}