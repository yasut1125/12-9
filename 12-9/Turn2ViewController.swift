//
//  Turn2ViewController.swift
//  12-9
//
//  Created by 田中康久 on 2018/06/16.
//  Copyright © 2018年 田中康久. All rights reserved.
//

import UIKit

class Turn2ViewController: UIViewController {

    var count = 0
    var ten = 0
    var ten2 = 0
    
    var point01 = 0
    var point02  = 0
    
    
    
    var img01 :UIImage = UIImage(named:"d1.png")!
    var img02 :UIImage = UIImage(named:"d2.png")!
    var img03 :UIImage = UIImage(named:"d3.png")!
    var img04 :UIImage = UIImage(named:"d4.png")!
    var img05 :UIImage = UIImage(named:"d5.png")!
    var img06 :UIImage = UIImage(named:"d6.png")!
    
    var imgArray:[UIImage] = []
    
    @IBOutlet weak var imageview2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceNumber2.text = "\(point02)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var diceNumber2: UILabel!
    
    @IBOutlet weak var tapStartDice2: UIButton!
    
    
    @IBAction func tapStartDice2(_ sender: Any) {
        imgArray = [img01, img02, img03, img04, img05, img06]
        
        let r = Int(arc4random_uniform(6))
        
        imageview2.image = imgArray[r]
        if r % 2 == 0{
            point02 += (r + 1)
        } else {
            point02 -= (r + 1)
        }
        diceNumber2.text = "\(point02)"
        tapStartDice2.isEnabled = true
        tapStartDice2.isEnabled = false
        
    }
    
    @IBAction func tapSenkou(_ sender: Any) {
        count = count + 1
        if count < 6 {
            performSegue(withIdentifier: "toL", sender: nil)
        } else { performSegue(withIdentifier: "toC", sender: nil)
            
        }
    }
    
    
        
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toL"{
            let viewController = segue.destination as! Turn1ViewController
            viewController.point01 = point01
            viewController.point02 = point02
            viewController.count = count
        
            
        } else if segue.identifier == "toC"{
            
            let viewController = segue.destination as! countViewController

            viewController.point01 = point01
            viewController.point02 = point02
            viewController.count = count
        }
    }
}


