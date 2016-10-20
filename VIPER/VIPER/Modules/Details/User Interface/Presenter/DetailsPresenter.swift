//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//

import Foundation


class DetailsPresenter : DetailsModuleInterface
{
    // Instance Variables

    weak var view: DetailsViewInterface!
    var wireframe: DetailsWireframe!
    var article: NSDictionary!


    // MARK: DetailsModuleInterface

    func updateView()
    {
        self.view.showArticleDetails(self.article)
    }
}
