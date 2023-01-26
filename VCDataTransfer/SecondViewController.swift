//
//  SecondViewController.swift
//  VCDataTransfer
//
//  Created by kaan gokcek on 17.01.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var previousScreenColor: UILabel!
    @IBOutlet weak var secondVCLabel: UILabel!
    var previousScreenColorText = ""
    var screenColor = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print("second vc viewDidLoad occurs")
        previousScreenColor.text = previousScreenColorText
        screenColor = view.backgroundColor?.accessibilityName ?? "No screen color detected"
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("second vc viewWillAppear occurs")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("second vc viewDidAppear occurs")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("second vc viewWillDisappear occurs")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("second vc viewDidDisappear occurs")
    }
    @IBAction func buttonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toThirdVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC"{
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.previousScreenColorText = "Previous screen color : \(screenColor)"
        }
    }
}
