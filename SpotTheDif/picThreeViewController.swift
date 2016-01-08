//
//  picThreeViewController.swift
//  SpotTheDif
//
//  Created by edejesu on 12/3/15.
//  Copyright © 2015 edejesu. All rights reserved.
//

import UIKit

class picThreeViewController: UIViewController
{
    @IBOutlet weak var bigView: UIView!
    @IBOutlet weak var lab31: label!
    @IBOutlet weak var lab32: label!
    @IBOutlet weak var lab33: label!
    @IBOutlet weak var lab34: label!
    @IBOutlet weak var image3: UIImageView!
   
    var bigLabel = label()
    var labelArray : [label] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        image3.image = UIImage(named: "squidFish")
        labelArray = [lab31, lab32, lab33, lab34]


    }
    func isWinner() // checks to see of you found all the differences
    {
        if lab31.text == "O" && lab32.text == "O" && lab33.text == "O" && lab34.text == "O"
        {
            
            let alert = UIAlertController(title: "winner!", message: "you found all the differneces!", preferredStyle: UIAlertControllerStyle.Alert)
            let resetButton = UIAlertAction(title: "reset", style: UIAlertActionStyle.Default, handler: {sender in
                self.lab31.text = ""
                self.lab32.text = ""
                self.lab33.text = ""
                self.lab34.text = ""
                //self.lab11.text = ""
                //self.lab22.text = ""
                //self.lab33.text = ""
            })
            alert.addAction(resetButton)
            presentViewController(alert, animated: true, completion: nil)
        }
    }
    @IBAction func viewTapped(sender: UITapGestureRecognizer)
    {
        for spot in labelArray
        {
            if CGRectContainsPoint(spot.frame, sender.locationInView(bigView))
            {
                print("spot")
                spot.text = "O"
                
            }
            isWinner()
        }
    }

}
