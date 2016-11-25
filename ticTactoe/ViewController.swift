//
//  ViewController.swift
//  ticTactoe
//
//  Created by Vishwa Raj on 19/10/16.
//  Copyright © 2016 innov8. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOptions: UILabel!
    var i : Int = 0 ;
    var winner = "Player 1"
    var gameState = [0,0,0,0,0,0,0,0,0];
    var complete = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        let activePosition = sender.tag
        var totalBlankSpace = 0
        for blank_Space in gameState
        {
            if blank_Space != 0
            {
                totalBlankSpace += 1
            }
        }
        print(totalBlankSpace)
        if totalBlankSpace == 8
        {
            complete = true
        }

        if gameState[activePosition] == 0
        {
            if(i == 0)
            {
                sender.setImage(UIImage(named: "nought.png"), for:[])
                i = 1
                
                gameState[activePosition] = 1
                
                if (gameState[0] == gameState[1] && gameState[1] == gameState[2] && gameState[1] != 0) || (gameState[3] == gameState[4] && gameState[4] == gameState[5] && gameState[4] != 0) || (gameState[6] == gameState[7] && gameState[7] == gameState[8] && gameState[8] != 0) || (gameState[0] == gameState[4] && gameState[4] == gameState[8] && gameState[0] != 0) || (gameState[2] == gameState[4] && gameState[4] == gameState[6] && gameState[6] != 0) || (gameState[2] == gameState[5] && gameState[5] == gameState[8] && gameState[8] != 0) || (gameState[1] == gameState[4] && gameState[4] == gameState[7] && gameState[7] != 0) || (gameState[0] == gameState[3] && gameState[3] == gameState[6] && gameState[6] != 0)
                {
                    self.performSegue(withIdentifier: "finalSegue", sender: nil)
                }
                
                
                else
                {
                    if complete == false
                    {
                        playerOptions.text = "Player 2"
                    }
                    else
                    {
                        winner = "No one"
                        self.performSegue(withIdentifier: "finalSegue", sender: nil)
                        
                    }
                    
                }
            
            }
            else
            {
                sender.setImage(UIImage(named: "cross.png"), for:[])
                i = 0
                
                gameState[activePosition] = 2
                
                if (gameState[0] == gameState[1] && gameState[1] == gameState[2] && gameState[1] != 0) || (gameState[3] == gameState[4] && gameState[4] == gameState[5] && gameState[4] != 0) || (gameState[6] == gameState[7] && gameState[7] == gameState[8] && gameState[8] != 0) || (gameState[0] == gameState[4] && gameState[4] == gameState[8] && gameState[0] != 0) || (gameState[2] == gameState[4] && gameState[4] == gameState[6] && gameState[6] != 0) || (gameState[2] == gameState[5] && gameState[5] == gameState[8] && gameState[8] != 0) || (gameState[1] == gameState[4] && gameState[4] == gameState[7] && gameState[7] != 0) || (gameState[0] == gameState[3] && gameState[3] == gameState[6] && gameState[6] != 0)
                {
                    print("Player 2 Wins")
                    winner = "Player 2";
                    self.performSegue(withIdentifier: "finalSegue", sender: nil)
                }
                else
                {
                    playerOptions.text = "Player 1"
                }
                
            }
        }
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let winnerPass : FinalScreen = segue.destination as! FinalScreen
        winnerPass.message = winner
    }

}

