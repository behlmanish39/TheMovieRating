//
//  UpcomingDataSource.swift
//  TheMoviesRating
//
//  Created by Manish Behl on 05/04/19.
//  Copyright © 2019 Manish Behl. All rights reserved.
//

import Foundation
import UIKit

struct UpcomingData {
    
    var titleLabel :String
    var voteAvrg:Double
    var voteCount :Int
    var movieDateRelse :String
    var overviewText :String
}

class UpcomingDataSource: NSObject {
    
    var upcomingArray = Array<UpcomingData>()
    init(data:UpcomingModel?){
        if let upcomingDataArray = data?.results{
        
    for object in upcomingDataArray {
            
        var data = UpcomingData(titleLabel: object.title, voteAvrg: object.voteAverage, voteCount: object.voteCount, movieDateRelse: object.releaseDate, overviewText: object.overview)
        upcomingArray.append(data)
     }
   }
 }
}

extension UpcomingDataSource:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) as! UpcomingCell
        cell.upcomingRoute = upcomingArray[indexPath.row]
        return cell
    }
}
