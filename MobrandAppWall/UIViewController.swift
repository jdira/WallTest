//
//  UIViewController.swift
//  Mobrand
//
//  Created by Jdira Ovidiu on 25/02/16.
//  Copyright © 2016 OlaMobile. All rights reserved.
//

import UIKit

extension UIViewController{
    static func instanceWithDefaultNib(aClass: AnyClass) -> Self {
        let className = NSStringFromClass(self as! AnyClass).componentsSeparatedByString(".").last
        return self.init(nibName: className, bundle: BundleUtils.getBundle(aClass))
    }
    
   
}



class BundleUtils {
    
    
    class func getBundle(aClass: AnyClass) ->NSBundle!{
        let podBundle = NSBundle(forClass: aClass)
        let bundleURL = podBundle.URLForResource("MobrandAppWall", withExtension: "bundle")
        return NSBundle(URL: bundleURL!)!
        
    }
}
