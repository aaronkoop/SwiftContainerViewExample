//
//  ViewController.swift
//  SwiftContainerViewExample
//
//  Created by Aaron Koop on 11/12/14.
//  Copyright (c) 2014 Aaron Koop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private weak var topViewController: TopViewController?
    private weak var bottomViewController: BottomViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let viewController = segue.destinationViewController as? TopViewController {
            topViewController = viewController
        } else if let viewController = segue.destinationViewController as? BottomViewController {
            bottomViewController = viewController
        }
        
    }
}

