//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//

import Foundation


protocol ArticlesViewInterface: class
{
    func showNoContentScreen()
    func showArticlesData(articles: NSArray)
}
