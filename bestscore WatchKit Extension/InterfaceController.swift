//
//  InterfaceController.swift
//  bestscore WatchKit Extension
//
//  Created by mbren on 2016-10-27.
//  Copyright © 2016 mbren. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var playerOneName: WKInterfaceLabel!
    @IBOutlet var playerTwoName: WKInterfaceLabel!
    
    @IBOutlet var playerOneScore: WKInterfaceButton!
    @IBOutlet var playerTwoScore: WKInterfaceButton!
    @IBOutlet var resetButton: WKInterfaceButton!
    
    var scoreOne = 0
    var scoreTwo = 0

    @IBAction func pOneButtonPressed() {
        scoreOne++
        playerOneScore.setTitle(String(scoreOne))
    }
    
    @IBAction func pTwoButtonPressed() {
        scoreTwo++
        playerTwoScore.setTitle(String(scoreTwo))
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects.
        playerOneScore.setTitle(String(scoreOne))
        playerTwoScore.setTitle(String(scoreTwo))
        
        playerOneScore.setBackgroundColor(UIColor(red: 32.0/255, green: 148.0/255, blue: 250.0/255, alpha: 1.0))
        playerTwoScore.setBackgroundColor(UIColor(red: 32.0/255, green: 148.0/255, blue: 250.0/255, alpha: 1.0))
        resetButton.setBackgroundColor(UIColor(red: 250.0/255, green: 17.0/255, blue: 79.0/255, alpha: 1.0))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBAction func gameReset() {
        scoreOne = 0
        scoreTwo = 0
        playerOneScore.setTitle(String(scoreOne))
        playerTwoScore.setTitle(String(scoreTwo))
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }


}
