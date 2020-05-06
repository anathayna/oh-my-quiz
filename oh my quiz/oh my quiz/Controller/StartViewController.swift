//
//  ViewController.swift
//  oh my quiz
//
//  Created by Ana Thayna Franca on 27/04/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButtonPress(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goQuiz", sender: self)
    }

}
