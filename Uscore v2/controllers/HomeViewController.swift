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
    @IBOutlet weak var top3View: UIView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //USE HEXA COLORS
        func hexStringToUIColor (hex:String) -> UIColor {
            var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
            
            if (cString.hasPrefix("#")) {
                cString.remove(at: cString.startIndex)
            }
            
            if ((cString.count) != 6) {
                return UIColor.gray
            }
            
            var rgbValue:UInt32 = 0
            Scanner(string: cString).scanHexInt32(&rgbValue)
            
            return UIColor(
                red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                alpha: CGFloat(1.0)
            )
        }
        
        
        
        
        
        //Initialise red color
        let redColor = hexStringToUIColor(hex: "A0041C")
        
        //Initialise blue color
        _ = hexStringToUIColor(hex: "001971")
        
        //TOP 3 TITLE
        labelTop3.textColor = redColor
        
        
        
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
