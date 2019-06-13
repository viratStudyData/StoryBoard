//
//  ViewController.swift
//  Testing
//
//  Created by Apple on 09/04/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = ViewController1.getVC(.main)
        vc.a = ""
        self.navigationController?.pushViewController(vc, animated: true)
    }


}

