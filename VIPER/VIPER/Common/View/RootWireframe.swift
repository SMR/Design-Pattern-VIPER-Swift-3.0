//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//
import UIKit


class RootWireframe : NSObject
{
    func showRootViewControllerInWindow(viewController: UIViewController, window: UIWindow)
    {
        let navigationController = window.rootViewController as! UINavigationController
        navigationController.viewControllers = [viewController]
    }
}
