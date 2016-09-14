//
//  NewsViewController.swift
//  HackerNews
//
//  Created by leohe on 16/9/14.
//
//

import UIKit
import HackerServiceSwift


class NewsViewController: UITableViewController {
    
    var filter:Post.PostFilter = .Top
    var loadMoreEnabled = false
    var infiniteScrollingView:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "HN:News"
        
        setupInfiniteScrollingView()
        setupNavigationItems()
    }
    
    private func setupInfiniteScrollingView(){
        infiniteScrollingView = UIView(frame: CGRectMake(0,self.tableView.contentSize.height,self.tableView.bounds.size.width,60))
        infiniteScrollingView!.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        infiniteScrollingView!.backgroundColor = UIColor.LoadMoreLightGrayColor()
        let activityViewIndicator = UIActivityIndicatorView(activityIndicatorStyle: .WhiteLarge)
        
        activityViewIndicator.frame = CGRectMake(infiniteScrollingView!.frame.size.width/2-activityViewIndicator.frame.width/2, infiniteScrollingView!.frame.size.height/2-activityViewIndicator.frame.height/2, activityViewIndicator.frame.width, activityViewIndicator.frame.height)
        activityViewIndicator.startAnimating()
        infiniteScrollingView!.addSubview(activityViewIndicator)
        
    }
    
    func setupNavigationItems(){
        let rightButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Organize, target: self, action: #selector(onRightButton))
        self.navigationItem.rightBarButtonItem = rightButton
    }
    
    func onRightButton(){
        let navCategories = self.storyboard?.instantiateViewControllerWithIdentifier("categoriesNavigationController") as! UINavigationController
        
//        let categoriesVC = navCategories.visibleViewController as! CategoriesV
    }
}

