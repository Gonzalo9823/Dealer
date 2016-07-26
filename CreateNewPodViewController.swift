//
//  CreateNewPodViewController.swift
//  Dealer
//
//  Created by Gonzalo Caballero on 7/19/16.
//  Copyright © 2016 Gonzalo. All rights reserved.
//

import UIKit

class CreateNewPodViewController: UIViewController {

    @IBOutlet var dirts: [UIButton]!
    @IBOutlet var wateringCans: [UIButton]!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize.width = 818

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func close(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func normalDirt(sender: UIButton) {
        
        for dirt in dirts {
            dirt.selected = false
        }
        
        let selectedDirt = UIImage(named: "BagSelected")
        sender.setImage(selectedDirt!, forState: .Selected)
        
        sender.selected = true
        
        
    }

    @IBAction func coolDirt(sender: UIButton) {
        for dirt in dirts {
            dirt.selected = false
        }
        
        let selectedDirt = UIImage(named: "BagSelected")
        sender.setImage(selectedDirt!, forState: .Selected)
        
        sender.selected = true
    }
    
    @IBAction func superSwaggyDirt(sender: UIButton) {
        for dirt in dirts {
            dirt.selected = false
        }
        
        let selectedDirt = UIImage(named: "BagSelected")
        sender.setImage(selectedDirt!, forState: .Selected)
        
        sender.selected = true
    }
    
    @IBAction func normalWateringCan(sender: UIButton) {
        for wateringCan in wateringCans {
            wateringCan.selected = false
        }
        
        let selectedDirt = UIImage(named: "selectedWateringCan")
        sender.setImage(selectedDirt!, forState: .Selected)
        
        sender.selected = true
        
    }
    
    @IBAction func betterWateringCan(sender: UIButton) {
        for wateringCan in wateringCans {
            wateringCan.selected = false
        }
        
        let selectedDirt = UIImage(named: "selectedWateringCan")
        sender.setImage(selectedDirt!, forState: .Selected)
        
        sender.selected = true
    }
    
    @IBAction func fgWateringCan(sender: UIButton) {
        for wateringCan in wateringCans {
            wateringCan.selected = false
        }
        
        let selectedDirt = UIImage(named: "selectedWateringCan")
        sender.setImage(selectedDirt!, forState: .Selected)
        
        sender.selected = true
    }
    
    
}
