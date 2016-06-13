//
//  MoreViewController.swift
//  PodcastApp
//
//  Created by Ismael Ricardo Costa on 6/8/16.
//  Copyright © 2016 cocoastudies. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false);
        
    }
    
    @IBAction func gotToSlack(){
        UIApplication.sharedApplication().openURL(NSURL(string: "https://cocoastudies.slack.com/messages/general/")!)
    }
    
    @IBAction func emailContact(){
        
        let email = "cocoastudies@gmail.com"
        let url = NSURL(string: "mailto:\(email)")
        UIApplication.sharedApplication().openURL(url!)
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let backBarButton = UIBarButtonItem()
        backBarButton.title = "Voltar"
        backBarButton.tintColor = UIColor(red: 251.0, green: 12.0, blue: 67.0, alpha: 1.0)
        navigationItem.backBarButtonItem = backBarButton
        
    }
    

}
