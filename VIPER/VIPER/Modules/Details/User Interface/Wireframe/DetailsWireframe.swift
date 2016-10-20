//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//

import UIKit


class DetailsWireframe : NSObject
{
    // MARK: Constants

    let storyboardName = "DetailsStoryboard"
    let detailsViewControllerIdentifier = "DetailsViewController"

    // MARK: Instance Variables

    weak var detailsViewController: DetailsViewController!
    var detailsPresenter: DetailsPresenter!


    // MARK: Public
    
    override init()
    {
        super.init()
        self.detailsPresenter = DetailsPresenter()
    }
    

    func presentArticleDetailsInterfaceFromViewController(controller: UIViewController)
    {
        self.detailsViewController = self.detailsViewControllerFromStoryboard()
        self.detailsViewController.presenter = self.detailsPresenter
        
        self.detailsPresenter.view = detailsViewController
        self.detailsPresenter.wireframe = self
        
        controller.navigationController!.pushViewController(detailsViewController, animated: true)
    }


    // MARK: Private

    private func detailsViewControllerFromStoryboard() -> DetailsViewController
    {
        let storyboard = UIStoryboard(name: self.storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewControllerWithIdentifier(self.detailsViewControllerIdentifier) as! DetailsViewController
        return viewController
    }
}
