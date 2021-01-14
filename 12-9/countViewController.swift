//
//  countViewController.swift
//  12-9
//
//  Created by 田中康久 on 2018/06/16.
//  Copyright © 2018年 田中康久. All rights reserved.
//

import UIKit

class countViewController: UIViewController {

    var ten = 0
    var ten2 = 0
    var count = 0

    var point01 = 0
    var point02  = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        point1.text = "\(point01)"
        point2.text = "\(point02)"
        
        if point01 > point02 {
            user1.text = "Winner"
            user2.text = "Loser"
        }
        if point01 == point02 {
            user1.text = "Draw"
            user2.text = "Draw"
        }
        if point01 < point02 {
            user1.text = "Loser"
            user2.text = "Winner"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
 
    }
    
    @IBOutlet weak var point1: UILabel!
        
    @IBOutlet weak var point2: UILabel!
    
    @IBOutlet weak var user1: UILabel!
    
    @IBOutlet weak var user2: UILabel!
    
        
        
        
        
    


}
