//
//  GetVideoDataSource.swift
//  TheMoviesRating
//
//  Created by Manish Behl on 05/04/19.
//  Copyright © 2019 Manish Behl. All rights reserved.
//

import Foundation
import UIKit

struct  VideoElements {
    var type :String
    var name:String
    var videoKey :String
}

class GetVideoDataSource: NSObject {
    
    var videoArray = Array<VideoElements>()
    init(data:GetVideoModel?){
        
        if let getVideoArray = data?.results{
            
            for object in getVideoArray {
                
                let data = VideoElements(type: object.type, name: object.name, videoKey: object.key)
                videoArray.append(data)
            }
        }
    }
}
extension GetVideoDataSource:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) as! GetVideoCell
        cell.VideoElements = videoArray[indexPath.row]
        return cell
    }
}
