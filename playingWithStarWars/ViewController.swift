//
//  ViewController.swift
//  playingWithStarWars
//
//  Created by Johann Kerr on 10/24/16.
//  Copyright © 2016 Johann Kerr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var urlString = "http://swapi.co/api/people/1"
        
        var url = URL(string: urlString)
        
        if let unwrappedUrl = url{
            var session = URLSession.shared
           

            var dataTask = session.dataTask(with: unwrappedUrl, completionHandler: { (data, response, error) in
                
                print(response)
                print(error)
                if let unwrappedData = data{
                    
                    do{
                        // success
                        var responseJSON = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String:Any]
                        
                        var name = responseJSON["name"] as! String
                        
                        print(name)
                        
                        
                    }catch{
                       print("hey this is not working")
                        
                    }
                   
                }
                
                
            })
            
            
             dataTask.resume()
            
            
            
            
            
        }
        
        
        
        
        
        
        
    }
       
    



}

