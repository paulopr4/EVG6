//
//  FinalViewController.swift
//  AppEVG6
//
//  Created by FredKopeika on 08/05/16.
//  Copyright © 2016 Paulopr4. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    
    var resultadoNovo : String?
    
    @IBOutlet weak var Resultlabel01: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backAction(sender: AnyObject) {
        // fazer a transição "backSegue", que foi aidionada pelo StoryBoard
        self.performSegueWithIdentifier("BackSegue", sender: self)
        print("teste")
    }
    
    

        // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "backSegue") {
        }
        
    }
}

/*
 override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
 if(segue.identifier == "backSegue") {
 
 }

 
 
 */