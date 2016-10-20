//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//

import UIKit
import Kingfisher


class DetailsViewController : UIViewController, DetailsViewInterface
{
    // MARK: Constants

    let kNavigationTitle = "Details"
    let kImagePlaceHolder = "image-placeholder"


    // MARK: Instance Variables

    var presenter: DetailsPresenter!
    
    
    // MARK: Outlets
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var authorsLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!


    // MARK: Life Cycle

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.presenter.updateView()
        self.navigationController!.title = self.kNavigationTitle.localized()
    }


    // MARK: DetailsViewInterface

    func showArticleDetails(article: NSDictionary)
    {
        if article["image"] != nil {
            self.articleImageView.kf_setImageWithURL(NSURL(string: article["image"] as! String)!, placeholderImage:nil)
        } else {
            self.articleImageView.image = UIImage(named: self.kImagePlaceHolder)
        }

        self.authorsLabel.text = article["authors"] as! String
        self.dateLabel.text = article["date"] as! String
        self.titleLabel.text = article["title"] as! String
        self.contentLabel.text = article["content"] as! String
    }
}
