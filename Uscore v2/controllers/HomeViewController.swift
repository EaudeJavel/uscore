//
//  HomeViewController.swift
//  Uscore v2
//
//  Created by Paul Lamy on 23/11/2561 BE.
//  Copyright © 2561 Hetic. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var topOneSquare: UICollectionViewCell!
    @IBOutlet weak var topTwoSquare: UICollectionViewCell!
    @IBOutlet weak var topThreeSquare: UICollectionViewCell!
    @IBOutlet weak var labelTop3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        
        
        //FIRST SQUARE RADIUS
        topOneSquare.layer.shadowOpacity = 0.7
        topOneSquare.layer.shadowOffset = CGSize(width: 3, height: 3)
        topOneSquare.layer.shadowRadius = 15.0
        topOneSquare.layer.shadowColor = UIColor.darkGray.cgColor
        topOneSquare.layer.cornerRadius = 3
        
        //Second SQUARE RADIUS
        topTwoSquare.layer.shadowOpacity = 0.7
        topTwoSquare.layer.shadowOffset = CGSize(width: 3, height: 3)
        topTwoSquare.layer.shadowRadius = 15.0
        topTwoSquare.layer.shadowColor = UIColor.darkGray.cgColor
        topTwoSquare.layer.cornerRadius = 3
        
        //THIRD SQUARE RADIUS
        topThreeSquare.layer.shadowOpacity = 0.7
        topThreeSquare.layer.shadowOffset = CGSize(width: 3, height: 3)
        topThreeSquare.layer.shadowRadius = 15.0
        topThreeSquare.layer.shadowColor = UIColor.darkGray.cgColor
        
        //THIRD SQUARE RADIUS
        topThreeSquare.layer.cornerRadius = 3

      }

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
