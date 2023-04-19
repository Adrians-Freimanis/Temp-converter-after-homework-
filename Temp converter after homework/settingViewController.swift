//
//  settingViewController.swift
//  Temp converter after homework
//
//  Created by adrians.freimanis on 19/04/2023.
//

import UIKit

class settingViewController: UIViewController {

    
    @IBOutlet weak var OpenSettingsButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBAction func openSettingsButtonPressed(_ sender: UIButton) {
        
        if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
          UIApplication.shared.open(settingsUrl, options: [:], completionHandler: nil)
        }
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
