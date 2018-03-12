//
//  ViewController.swift
//  Zaika Maxim HomeNavigation
//
//  Created by Максим Заїка on 11.03.2018.
//  Copyright © 2018 Максим Заїка. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func spaceButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SpaceTableViewController")
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func cityButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CitiTableViewController")
        self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToVC(segue: UIStoryboardSegue){
    }


}

