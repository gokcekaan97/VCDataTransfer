//
//  ThirdViewController.swift
//  VCDataTransfer
//
//  Created by kaan gokcek on 17.01.2023.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var thirdVCLabel: UILabel!
    @IBOutlet weak var previousScreenColor: UILabel!
    var previousScreenColorText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print("third vc viewDidLoad occurs")
        previousScreenColor.text = previousScreenColorText
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("third vc viewWillAppear occurs")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("third vc viewDidAppear occurs")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("third vc viewWillDisappear occurs")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("third vc viewDidDisappear occurs")
    }


}
