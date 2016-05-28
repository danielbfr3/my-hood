//
//  Post.swift
//  my-hood
//
//  Created by Daniel Freire on 27/05/16.
//  Copyright © 2016 Daniel Freire. All rights reserved.
//

import Foundation

class Post {
    private var _imagePath: String!
    private var _title: String!
    private var _postDescription: String!
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDescription: String {
        return _postDescription
    }
    
    init(imagePath: String, title: String, postDescription: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDescription = postDescription
    }
}