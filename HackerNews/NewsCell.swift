//
//  NewsCell.swift
//  HackerNews
//
//  Created by leohe on 16/9/18.
//
//

import UIKit
import HackerServiceSwift

let NewsCellsId = "NewsCell"
let NewsCellHeight:CGFloat = 110.0
let NewsCellTitleMarginConstant:CGFloat = 16.0
let NewsCellTitleFontSize:CGFloat = 16.0
let NewsCellTitleDefaultHeight:CGFloat = 20.0


enum NewsCellActionType:Int {
    case Vote = 0
    case Comment
    case Username
}

class NewsCell: UITableViewCell {
    
    @IBOutlet var titleLabel:UILabel!
    @IBOutlet var urlLabel:UILabel!
//    @IBOutlet var voteLabel:
    @IBOutlet var readLaterIndicator:UIView!
    
    
    var post:Post!{
        didSet{
           self.titleLabel.text = self.post.title
        }
    }
    
    var postId:Int!{
        didSet{
            
        }
    }
    
    class func heightForText(text:NSString,bounds:CGRect) -> CGFloat{
        let size = text.boundingRectWithSize(CGSizeMake(CGRectGetWidth(bounds) - (NewsCellTitleMarginConstant * 2), CGFloat.max),
                                             options: NSStringDrawingOptions.UsesLineFragmentOrigin,
                                             attributes: [NSFontAttributeName: UIFont.systemFontOfSize(NewsCellTitleFontSize)],
                                             context: nil)
        return size.height > NewsCellTitleDefaultHeight ? NewsCellHeight + size.height - NewsCellTitleDefaultHeight : NewsCellHeight
    }
}
