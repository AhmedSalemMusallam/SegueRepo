//
//  ViewController.swift
//  SegueRepo
//
//  Created by Ahmed Salem on 12/01/2023.
//

import UIKit

class ViewController: UIViewController {

    //Mark:- outlets
    @IBOutlet weak var nameTV: UITextField!
    @IBOutlet weak var ageTV: UITextField!
    @IBOutlet weak var emailTV: UITextField!
    @IBOutlet weak var jobTitleTV: UITextField!
    @IBOutlet weak var passDataBtn: UIButton!
    @IBOutlet weak var welcomeScreen: UIButton!
    
    //Mark:- welcomeScreenAction
    @IBAction func welcomeScreenAction(_ sender: Any) {
        performSegue(withIdentifier: "WelcomeViewSegue", sender: nil)
    }
    
    //Mark:- passDataMethod
    @IBAction func passDataMethod(_ sender: UIButton) {
        performSegue(withIdentifier: "DetailViewSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier
        {
        case "DetailViewSegue":
            let destinationVC = segue.destination as? DetailViewController
            destinationVC?.segueIdentifier = "DetailViewSegue"
            destinationVC?.name = nameTV.text
            destinationVC?.age = ageTV.text
            destinationVC?.email = emailTV.text
            destinationVC?.jobTitle = jobTitleTV.text
            
            
        case "WelcomeViewSegue":
            let destinationVC = segue.destination as? WelcomViewController
            destinationVC?.segueIdentifier = "WelcomeViewSegue"
            destinationVC?.name = nameTV.text
            destinationVC?.jobTitle = jobTitleTV.text
            
            
        default:
            print("Error Happend")
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

