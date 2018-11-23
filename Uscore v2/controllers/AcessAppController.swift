//
//  AcessAppController.swift
//  Uscore v2
//
//  Created by Paul Lamy on 21/11/2561 BE.
//  Copyright © 2561 Hetic. All rights reserved.
//

import Foundation
import UIKit

class AccessAppController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func accessTapped(_ sender: Any) {
        
        let myStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let homeViewController = myStoryboard.instantiateViewController(withIdentifier: "NavigationIdentifier")
        
        present(homeViewController, animated: true, completion: nil)
    }
}

