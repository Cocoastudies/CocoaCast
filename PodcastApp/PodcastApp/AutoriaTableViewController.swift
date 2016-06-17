//
//  AutoriaTableViewController.swift
//  PodcastApp
//
//  Created by Ismael Ricardo Costa on 6/8/16.
//  Copyright © 2016 cocoastudies. All rights reserved.
//

import UIKit

class AutoriaTableViewController: UITableViewController {

    var authorList = [
        ["name":"Ismael", "contact":"ismaelirc@gmail.com"],
        ["name":"Bruno da Luz", "contact":"brunolabx@gmail.com"],
        ["name":"Jean Carlos", "contact":"jeancarlosaps@yahoo.com.br"],
        ["name":"Eduardo Scodino", "contact":"scodino@gmail.com"],
        ["name":"Rafael Alencar", "contact":"rafaelcsalencar@gmail.com"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Autoria"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return authorList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        let autor = authorList[indexPath.row]

        cell.textLabel?.text = autor["name"]
        cell.detailTextLabel?.text = autor["contact"]

        return cell
    }

}
