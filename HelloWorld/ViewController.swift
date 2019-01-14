//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jacqueline Joson on 1/13/19.
//  Copyright © 2019 Jacqueline Joson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        var emojiDict:[String:String] = [//"👸🏻":"Princess",
                                          //"🙅🏻‍♂️":"Nah",
                                          "👻":"Ghost",
                                          "👱🏾‍♀️":"Girl"]
        let selectedButton = sender
        let wordToLookUp = selectedButton.titleLabel?.text
        let meaning = emojiDict[wordToLookUp!]
        
        if let meaning = meaning {
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    
        }
    }
}
