
//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//
import UIKit


class AppDependencies : NSObject
{
    // MARK: Instance Variables
    
    var articlesWireframe: ArticlesWireframe!


    // MARK: Public
    
    override init()
    {
        let rootWireframe = RootWireframe()
        
        self.articlesWireframe = ArticlesWireframe()
        self.articlesWireframe.rootWireframe = rootWireframe
    }


    func installRootViewControllerIntoWindow(window: UIWindow)
    {
        self.articlesWireframe.presentArticlesInterfaceFromWindow(window)
    }
}
