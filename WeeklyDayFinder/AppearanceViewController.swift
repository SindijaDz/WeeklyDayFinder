//
//  AppearanceViewController.swift
//  WeeklyDayFinder
//
//  Created by sindija.dzintare on 26/08/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class AppearanceViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func openSettingsTapped(_ sender: Any) {
        
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open(settingsURL, options: [:]) { (success) in
                print(success)
            }
        }
    }
    func setLabelText() {
        var text = "Unable to specify User UI style"
        
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark Mode ON. \nGo to settings to change the Mode."
        }else{
            text = "Light Mode ON. \nGo to settings to change the Mode."
        }
        textLabel.text = text
    }
} // end of class

extension AppearanceViewController{
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
    
    func warningPopup(withTitle title: String, withMessage message: String) {
        
        DispatchQueue.main.async {
            let popUp = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            popUp.addAction(okButton)
            
            self.present(popUp, animated: true, completion: nil)
            
        }
    }
}
