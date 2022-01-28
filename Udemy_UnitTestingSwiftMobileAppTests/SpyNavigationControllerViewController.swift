//
//  SpyNavigationControllerViewController.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/01/29.
//

import UIKit

class SpyNavigationControllerViewController: UINavigationController {
    
    var pushedViewController: UIViewController!
    
    //override native function to get the value you want test
    //IMPORTANT: Spy Class Should't change native functions behavior. just capture, spying value or info that you want
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        pushedViewController = viewController
    }
}
