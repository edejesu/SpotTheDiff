//
//  picTwoViewController.swift
//  SpotTheDif
//
//  Created by edejesu on 12/3/15.
//  Copyright © 2015 edejesu. All rights reserved.
//

import UIKit

class picTwoViewController: UIViewController
{

    @IBOutlet weak var bigView: UIView!
    @IBOutlet weak var lab21: label!
    @IBOutlet weak var lab22: label!
    @IBOutlet weak var lab23: label!
    @IBOutlet weak var lab24: label!
    @IBOutlet weak var image2: UIImageView!
    var bigLabel = label()
    var labelArray : [label] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        image2.image = UIImage(named: "spongebobsandy")
        labelArray = [lab21, lab22, lab23, lab24]

    }
    func isWinner() // checks to see of you found all the differences
    {
        if lab21.text == "O" && lab22.text == "O" && lab23.text == "O" && lab24.text == "O"
        {
            
            let alert = UIAlertController(title: "winner!", message: "you found all the differneces!", preferredStyle: UIAlertControllerStyle.Alert)
            let resetButton = UIAlertAction(title: "reset", style: UIAlertActionStyle.Default, handler: {sender in
                self.lab21.text = ""
                self.lab22.text = ""
                self.lab23.text = ""
                self.lab24.text = ""
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

    


