//
//  UIColorExt.swift
//  HackerNews
//
//  Created by leohe on 16/9/14.
//
//

import UIKit

extension UIColor{
    
    public class func RGBColor(red:CGFloat,green:CGFloat,blue:CGFloat) -> UIColor{
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0)
    }
    
    public class func LoadMoreLightGrayColor() -> UIColor{
        return UIColor.RGBColor(245, green: 245, blue: 245)
    }
}
