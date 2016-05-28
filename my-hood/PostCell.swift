//
//  PostCell.swift
//  my-hood
//
//  Created by Daniel Freire on 27/05/16.
//  Copyright © 2016 Daniel Freire. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var postDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(post: Post) {
        titleLabel.text = post.title
        postDescription.text = post.postDescription
        postImage.image = UIImage(named: post.imagePath)
    }
    
}
