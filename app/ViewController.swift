//
//  ViewController.swift
//  SwiftApp
//
//  Created by Josué Santos on 09/02/20.
//  Copyright © 2020 Hotmart. All rights reserved.
//

import app_ObjcLib
import UIKit

class ViewController: UIViewController {
    
    let rootView = RNView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func loadView() {
        super.loadView()
        
        view = rootView.rootView("TestBuild")
    }

}

