//
//  picOneViewController.swift
//  SpotTheDif
//
//  Created by edejesu on 12/2/15.
//  Copyright © 2015 edejesu. All rights reserved.
//

import UIKit

class picOneViewController: UIViewController
{

    @IBOutlet weak var bigView: UIView!
    @IBOutlet weak var lab1: label!
    @IBOutlet weak var lab2: label!
    @IBOutlet weak var lab3: label!
    @IBOutlet weak var image: UIImageView!
    var bigLabel = label()
    var labelArray : [label] = [] //initalizes array for labels

    
       override func viewDidLoad()
    {
        super.viewDidLoad()
        image.image = UIImage(named: "spongebobflip")
        labelArray = [lab1, lab2, lab3]

        
    }
    func isWinner() // checks to see of you found all the differences
    {
        if lab1.text == "O" && lab2.text == "O" && lab3.text
            == "O"
        {
            
            let alert = UIAlertController(title: "winner!", message: "you found all the differneces!", preferredStyle: UIAlertControllerStyle.Alert)
            let resetButton = UIAlertAction(title: "reset", style: UIAlertActionStyle.Default, handler: {sender in
                self.lab1.text = ""
                self.lab2.text = ""
                self.lab3.text = ""
                //self.lab11.text = ""    *POSSIBLE TWO SPOTS
                //self.lab22.text = ""    *
                //self.lab33.text = ""    *
            })
            alert.addAction(resetButton)
            presentViewController(alert, animated: true, completion: nil)
        }
    }



    @IBAction func viewTapped(sender: UITapGestureRecognizer)
    {         // adds O's if you tap the right spot

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

