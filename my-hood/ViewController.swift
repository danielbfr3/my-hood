//
//  ViewController.swift
//  my-hood
//
//  Created by Daniel Freire on 27/05/16.
//  Copyright © 2016 Daniel Freire. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let post1 = Post(imagePath: "test-image", title: "Teste", postDescription: "testando")
        
        posts.append(post1)
        posts.append(post1)
        posts.append(post1)
        posts.append(post1)
        
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(posts[indexPath.row])
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(posts[indexPath.row])
            return cell
        }
    }
 
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 87.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
}

