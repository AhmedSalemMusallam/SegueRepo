//
//  DetailViewController.swift
//  SegueRepo
//
//  Created by Ahmed Salem on 12/01/2023.
//

import UIKit

class DetailViewController: UIViewController {

    //Mark:- Outlets
    @IBOutlet weak var detailViewLabel: UILabel!
    @IBOutlet weak var goBack: UIButton!
    //Mark:- Actions
    @IBAction func goBackAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    //Mark:- variables
    var segueIdentifier : String?
    var name : String?
    var age : String?
    var email : String?
    var jobTitle : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let segueIdentifier = segueIdentifier, let name = name, let age = age, let email = email, let jobTitle = jobTitle else { return }
        print(segueIdentifier)
        //Mark:- setting TV value from segue values
        detailViewLabel.text = "Your Name: \(name), Your Age: \(age), Your Email: \(email), and Your Job Title: \(jobTitle)"
        
        
    }
    

  

}
