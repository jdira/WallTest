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
        let podBundle = NSBundle(forClass: aClass)
        let bundleURL = podBundle.URLForResource("Resources", withExtension: "bundle")
        let bundle = NSBundle(URL: bundleURL!)!
        
        return self.init(nibName: className, bundle: bundle)
    }
    
   
}
