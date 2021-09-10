//
//  ViewController.swift
//  exampleAnimation
//
//  Created by Mac on 05/08/2021.
//

import UIKit
import Hero


class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redView.hero.id = "redView"
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(redViewTapped))
        redView.isUserInteractionEnabled = true
        redView.addGestureRecognizer(tapGesture)
    }
    
    @objc func redViewTapped() {
        self.navigationController?.hero.isEnabled = true
        let svc = storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController
        
        self.navigationController?.hero.navigationAnimationType = .fade
        self.navigationController?.pushViewController(svc!, animated: true)
    }

}

