//
//  ViewController.swift
//  TheMoviesRating
//
//  Created by Manish Behl on 04/04/19.
//  Copyright © 2019 Manish Behl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func UpcomingMoviesAction(_ sender: UIButton) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "UpcomingViewController") as? UpcomingViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    @IBAction func topRatedAction(_ sender: UIButton) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "GetVideosViewController") as? GetVideosViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

