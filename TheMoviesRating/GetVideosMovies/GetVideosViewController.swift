//
//  GetVideosViewController.swift
//  TheMoviesRating
//
//  Created by Manish Behl on 05/04/19.
//  Copyright © 2019 Manish Behl. All rights reserved.
//

import UIKit

class GetVideosViewController: UIViewController {

    var videoModell : GetVideoModel?
    var tblDataSurce :GetVideoDataSource?
    
    @IBOutlet weak var tblView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        RequestCreator.getVideos { (getVideosback) -> (Void) in
            self.tblDataSurce = GetVideoDataSource(data: getVideosback)
            DispatchQueue.main.async {
                
                self.tblView.dataSource = self.tblDataSurce
                self.tblView.reloadData()
                
            }
    }
    }
    @IBAction func bckBtnAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
