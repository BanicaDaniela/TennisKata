//
//  ViewController.swift
//  TennisKata
//
//  Created by Daniela Oana on 22/05/2019.
//  Copyright © 2019 Daniela Oana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var input: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showScore(_ sender: Any) {
        
        let calc = TennisScore()
        if let label = output {
            label.text = calc.fromInput(matchPoints: input.text ?? "0")
    }
    
}

}
