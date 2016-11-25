//
//  FinalScreen.swift
//  ticTactoe
//
//  Created by Vishwa Raj on 19/10/16.
//  Copyright © 2016 innov8. All rights reserved.
//

import Foundation
import UIKit

class FinalScreen: UIViewController {
    
    var message = String()
    @IBOutlet weak var winner: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        winner.text = message
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
