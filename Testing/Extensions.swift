//
//  Extentions.swift
//  Testing
//
//  Created by Apple on 09/04/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

extension UIViewController {
    
    class var identifier: String {
        return String(describing: self)
    }
    
    static func getVC(_ storyBoard: Stortyboad) -> Self {
        
        func instanceFromNib<T: UIViewController>(_ storyBoard: Stortyboad) -> T {
            guard let vc = controller(storyBoard: storyBoard.rawValue, controller: T.identifier) as? T else {
                fatalError("Not ViewController")
            }
            
            return vc
        }
        
        return instanceFromNib(storyBoard)
    }
    
    static func controller(storyBoard: String, controller: String) -> UIViewController {
        let storyBoard = UIStoryboard(name: storyBoard, bundle: Bundle.main)
        let vc = storyBoard.instantiateViewController(withIdentifier: controller)
        return vc
    }
}

enum Stortyboad: String {
    case main = "Main"
}
