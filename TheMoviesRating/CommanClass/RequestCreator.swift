//
//  RequestCreator.swift
//  TheMoviesRating
//
//  Created by Manish Behl on 05/04/19.
//  Copyright © 2019 Manish Behl. All rights reserved.
//

import Foundation

class RequestCreator :NSObject {
    
    class var sharedInstance:RequestCreator{
        
        struct Singleton {
            static let instance = RequestCreator()
        }
        return Singleton.instance
    }
    
    class func upcomingData(completion:@escaping(_ reponseData :UpcomingModel) -> (Void)){
        
        NetworkHandler.sharedInstance.getResponce(requestURL: BaseApi().baseUrl + ApiEndPoint().getUpcoming){ (modalData) -> (Void) in
        
            let decoder = JSONDecoder()
            let modal = try? decoder.decode(UpcomingModel.self, from: modalData)
            completion(modal!)
        }
    }
    
    
    class func getVideos(completion:@escaping(_ reponseData :GetVideoModel) -> (Void)){
        
        let videoUrl = BaseApi().baseUrl + ApiEndPoint().videos
        
        NetworkHandler.sharedInstance.getResponce(requestURL: videoUrl){ (modalData) -> (Void) in
            
            let decoder = JSONDecoder()
            let modal = try? decoder.decode(GetVideoModel.self, from: modalData)
            completion(modal!)
        }
    }
    
    
    
    
    
    
    
    
}
