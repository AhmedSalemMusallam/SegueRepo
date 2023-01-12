//
//  WelcomViewController.swift
//  SegueRepo
//
//  Created by Ahmed Salem on 12/01/2023.
//

import UIKit

class WelcomViewController: UIViewController {

    //Mark:- Outlets
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var goBackBtn: UIButton!
    
    //Mark:- Actions
    @IBAction func goBackAction(_ sender: Any) {
        dismiss(animated: true)
    }
    //Mark:- Variables
    var segueIdentifier : String?
    var name : String?
    var jobTitle : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let segueIdentifier = segueIdentifier, let name = name, let jobTitle = jobTitle else { return }
        //Mark:- setting TV value from segue values
        print(segueIdentifier)
        welcomeLabel.text = "Welcome \(jobTitle): \(name), Your're Welcomed."
    }
    


}
