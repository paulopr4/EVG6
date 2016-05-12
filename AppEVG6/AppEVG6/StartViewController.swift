//
//  StartViewController.swift
//  AppEVG6
//
//  Created by FredKopeika on 08/05/16.
//  Copyright © 2016 Paulopr4. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    var resultadoNovo : String!
    
    
    
    @IBOutlet weak var totalEquipe01: UITextField!
    @IBOutlet weak var convidadosEquipeEVG1: UITextField!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func CalcularEquipe(sender: AnyObject) {
        
        let ResulttotalEquipe01 = (totalEquipe01.text! as NSString).floatValue
        let ResulttotalConvidados1 = (convidadosEquipeEVG1.text! as NSString).floatValue
        
        let Result01:Float = Float (ResulttotalEquipe01) + Float (ResulttotalConvidados1)
        
        // Resultlabel01.text = ("Equipe 01 tem \(ResulttotalEquipe01) Evangelistas e \(ResulttotalConvidados1) Convidados total de \(Result01)")
        
        self.performSegueWithIdentifier("moveSegue", sender: nil)
    }


   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "moveSegue"){
            
            let telaDetalhes = segue.destinationViewController as? FinalViewController
            
            
            telaDetalhes?.resultadoNovo = self.resultadoNovo
   
        }
        
            
        
    }

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.becomeFirstResponder()
    }
    override func canBecomeFirstResponder() -> Bool {
        
        return true
    }

    
}
