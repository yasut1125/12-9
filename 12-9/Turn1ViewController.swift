//
//  Turn1ViewController.swift
//  12-9
//
//  Created by 田中康久 on 2018/06/16.
//  Copyright © 2018年 田中康久. All rights reserved.
//

import UIKit

class Turn1ViewController: UIViewController {
    

    var ten = 0
    var ten2 = 0
    var count = 0
    
    var point01 = 0
    var point02  = 0
    
    
    var img01 :UIImage = UIImage(named:"d1.png")!
    var img02 :UIImage = UIImage(named:"d2.png")!
    var img03 :UIImage = UIImage(named:"d3.png")!
    var img04 :UIImage = UIImage(named:"d4.png")!
    var img05 :UIImage = UIImage(named:"d5.png")!
    var img06 :UIImage = UIImage(named:"d6.png")!
    
    var imgArray:[UIImage] = []
    
 
    @IBOutlet weak var UIImageView: UIImageView!
    
    @IBOutlet weak var diceNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceNumber.text = "\(point01)"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var tapStartDice: UIButton!
    
    
    @IBAction func tapStartDice(_ sender: Any) {
        imgArray = [img01, img02, img03, img04, img05, img06]
        
        let r = Int(arc4random_uniform(6))
        
        UIImageView.image = imgArray[r]
        if r % 2 == 0 {
            point01 += (r + 1)
        } else {
            point01 -= (r + 1)
        }
        diceNumber.text = "\(point01)"
        tapStartDice.isEnabled = true
        tapStartDice.isEnabled = false
    }


        override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            if segue .identifier == "toN"{
            
                let viewController = segue.destination as! Turn2ViewController
            
                viewController.point01 = point01
                viewController.point02 = point02
                viewController.count = count
            }
        }

}
