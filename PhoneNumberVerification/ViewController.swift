//
//  ViewController.swift
//  PhoneNumberVerification
//
//  Created by Vignesh Ravichandran on 2/7/17.
//  Copyright © 2017 Vignesh Ravichandran. All rights reserved.
//

import UIKit
import DigitsKit
import Fabric
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
        let authButton = DGTAuthenticateButton(authenticationCompletion:
            { (session, error) in
                if (session != nil) {
                    // TODO: associate the session userID with your user model
                    let message = "Phone number: \(session!.phoneNumber)"
                    let alertController = UIAlertController(title: "You are logged in!", message: message, preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: .none))
                    self.present(alertController, animated: true, completion: .none)
                } else {
                    NSLog("Authentication error: %@", error!.localizedDescription)
                }
        })
        authButton?.center = self.view.center
        self.view.addSubview(authButton!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

