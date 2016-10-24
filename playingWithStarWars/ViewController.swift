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
        let urlString = "http://swapi.co/api/people/1"
        
        let url = URL(string: urlString)
        
        if let unwrappedUrl = url{
            let session = URLSession.shared
           

            let dataTask = session.dataTask(with: unwrappedUrl, completionHandler: { (data, response, error) in
                
                print(response)
                print(error)
                if let unwrappedData = data{
                    
                    do{
                        // success
                        let responseJSON = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String:Any]
                        
                        let name = responseJSON["name"] as! String
                        
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

