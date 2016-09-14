//
//  WebviewController.swift
//  HackerNews
//
//  Created by leohe on 16/9/14.
//
//

import UIKit

class WebviewController: UIViewController,UIWebViewDelegate {
    
    @IBOutlet var webView:UIWebView! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webView.delegate = self
    }
}
