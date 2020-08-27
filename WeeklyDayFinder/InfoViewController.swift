//
//  InfoViewController.swift
//  WeeklyDayFinder
//
//  Created by sindija.dzintare on 26/08/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    
    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescLabel: UILabel!
    
    var infoText = String()
    let appDescText = "This app is a homework project. Check the app modes (Dark/Light)."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescLabel.text = appDescText
        
        if !infoText.isEmpty{   //with ! it means that we are saying infoText is not empty
            appInfoLabel.text = infoText
        }
    }
    

    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        print("dismiss VC")
    }
    

}
