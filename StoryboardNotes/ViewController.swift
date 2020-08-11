//
//  ViewController.swift
//  StoryboardNotes
//
//  Created by TechCampus on 8/11/20.
//  Copyright © 2020 TechCampus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
   
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var conatinerView: UIView!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var userTxtfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLbl.text = "Hello TechCampus, Hello TechCampus, Hello TechCampus, Hello TechCampus"
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            titleLbl.font = UIFont(name: "Helvetica", size: 50)
        }
        
        userTxtfield.delegate = self
        userTxtfield.placeholder = "enter your techcampus account"
        userTxtfield.keyboardType = .default
        userTxtfield.keyboardAppearance = .dark
    }

    @IBAction func loginBtnClicked(_ sender: Any) {
        if userTxtfield.text == "" {
            let alert = UIAlertController(title: "Error", message:"please enter you techcampus account", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else  if !userTxtfield.text!.contains("@") {
            let alert = UIAlertController(title: "Error", message:"please enter an email", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userTxtfield.endEditing(true)
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        userTxtfield.backgroundColor = .black
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        userTxtfield.backgroundColor = .yellow
    }
    
    @IBAction func toolBarItemLast(_ sender: Any) {
        print("Hi")
    }
}

