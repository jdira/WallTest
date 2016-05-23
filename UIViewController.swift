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
        let bundle = NSBundle(forClass: UIViewController.self)
        return self.init(nibName: className, bundle: bundle)
    }
    
   
}
