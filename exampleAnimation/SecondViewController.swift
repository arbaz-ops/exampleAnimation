//
//  SecondViewController.swift
//  exampleAnimation
//
//  Created by Mac on 05/08/2021.
//

import UIKit
import Hero

class SecondViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.isHeroEnabled = true
        redView.hero.id = "redView"
        
       
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.hero.isEnabled = true

        let tvc = storyboard?.instantiateViewController(identifier: "ThirdViewController") as? ThirdViewController
        self.navigationController?.hero.navigationAnimationType = .fade

        self.navigationController?.pushViewController(tvc!, animated: true)
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
