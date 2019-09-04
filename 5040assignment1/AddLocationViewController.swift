//
//  AddLocationViewController.swift
//  5040assignment1
//
//  Created by Lindsay Chang on 2019/8/27.
//  Copyright © 2019 Lindsay Chang. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {
    
    weak var databaseController: DatabaseProtocol?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get the database controller once from the App Delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        databaseController = appDelegate.databaseController

        // Do any additional setup after loading the view.
    }
    
    @IBAction func useCurrentLocation(_ sender: Any) {
    }
    
    @IBAction func save(_ sender: Any) {
        
        if nameTextField.text != "" && descriptionTextField.text != "" && longitudeTextField.text != "" && latitudeTextField.text != "" {
            let name = nameTextField.text!
            let desc = descriptionTextField.text!
            let lat = Double(latitudeTextField.text!)
            //let lat = Double(latitudeTextField.text)!
            
            
            let long = Double(longitudeTextField.text!)
            //let sight = Sight(name: name, lat: lat, long: long, desc: desc)
            
            let _ =  databaseController!.addSight(name: name, lat: lat!, long: long!, desc: desc)
            navigationController?.popViewController(animated: true)
            return
        }
        
        var errorMsg = "Please ensure all fields are filled:\n"
        
        if nameTextField.text == "" {
            errorMsg += "- Must provide a name\n"
        }
        if latitudeTextField.text == "" {
            errorMsg += "- Must provide latitude"
        }
        if longitudeTextField.text == "" {
            errorMsg += "- Must provide longitude"
        }
        if descriptionTextField.text == "" {
            errorMsg += "- Must provide description"
        }
        
        displayMessage(title: "Not all fields filled", message: errorMsg)
    }
    
    func displayMessage(title: String, message: String) {
        // Setup an alert to show user details about the Person
        // UIAlertController manages an alert instance
        let alertController = UIAlertController(title: title, message: message, preferredStyle:
            UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler:
            nil))
        self.present(alertController, animated: true, completion: nil)
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
