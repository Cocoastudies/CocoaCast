//
//  ConsumeAPI.swift
//  PodcastApp
//
//  Created by Bruno Da luz on 6/3/16.
//  Copyright © 2016 cocoastudies. All rights reserved.
//

import Foundation

enum Result<T> {
    case Sucess(T)
    case Failure
}

class ConsumeAPI {
    
    func fetch(callback: Result<NSDictionary> -> ()) {
        
        let URL = NSURL(string: "https://itunes.apple.com/search?term=Apple&limit=25")
        
        let request = NSMutableURLRequest(URL: URL!,
                                          cachePolicy: .ReloadIgnoringLocalCacheData,
                                          timeoutInterval: 10.0)
        request.HTTPMethod = "GET"
        
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        let task = session.dataTaskWithRequest(request) { (data, response, error) in
            
            if error != nil {
                callback(.Failure)
            }
            
            if let data = data {
                let json = try? NSJSONSerialization.JSONObjectWithData(data, options: [])
                
                if let response = response as? NSHTTPURLResponse where 200...299 ~= response.statusCode {
                    print(json)
                    callback(.Sucess(json as! NSDictionary))
                }
            }
            callback(.Failure)
        }
        task.resume()
    }
    
}