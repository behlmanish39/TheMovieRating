//
//  UpcomingViewController.swift
//  TheMoviesRating
//
//  Created by Manish Behl on 04/04/19.
//  Copyright © 2019 Manish Behl. All rights reserved.
//

import UIKit

class UpcomingViewController: UIViewController {

    
    var upcomingMovies : UpcomingModel?
    var tblDataSurce :UpcomingDataSource?
    
    @IBOutlet weak var tblView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        RequestCreator.upcomingData { (route) -> (Void) in
            self.tblDataSurce = UpcomingDataSource(data: route)
            DispatchQueue.main.async {
                
                self.tblView.dataSource = self.tblDataSurce
                self.tblView.reloadData()
                
            }
        }
    }
    


}
