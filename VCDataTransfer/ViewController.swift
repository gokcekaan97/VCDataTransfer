//
//  ViewController.swift
//  VCDataTransfer
//
//  Created by kaan gokcek on 17.01.2023.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var firtsVCLabel: UILabel!
    var screenColor = ""
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        print("first vc viewDidLoad occurs")
        screenColor = view.backgroundColor?.accessibilityName ?? "No screen color detected"
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("first vc viewWillAppear occurs")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("first vc viewDidAppear occurs")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("first vc viewWillDisappear occurs")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("first vc viewDidDisappear occurs")
    }
    @IBAction func buttonClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let secondVC = segue.destination as! SecondViewController
            secondVC.previousScreenColorText = "Previous screen color : \(screenColor)"
        }
    }
    


}

