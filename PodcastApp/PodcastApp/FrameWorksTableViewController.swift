//
//  FrameWorksTableViewController.swift
//  PodcastApp
//
//  Created by Ismael Ricardo Costa on 6/8/16.
//  Copyright © 2016 cocoastudies. All rights reserved.
//

import UIKit

class FrameWorksTableViewController: UITableViewController {

    var frameWorkList: [String] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Frameworks Utilizados"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        self.navigationController?.setNavigationBarHidden(false, animated: false);
        
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return frameWorkList.count;
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        cell.textLabel?.text = frameWorkList[indexPath.row];

        return cell
    }
    
}
