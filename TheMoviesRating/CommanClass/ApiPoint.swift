//
//  ApiPoint.swift
//  MVVM template
//
//  Created by Manish Behl on 04/04/19.
//  Copyright © 2019 Manish Behl. All rights reserved.
//

import Foundation

var apiKey = "b00ca91d93f1577ff255abfd22d91f3d"


struct BaseApi {
    var baseUrl = "https://api.themoviedb.org/"
}

struct ApiEndPoint {
    
    var getUpcoming = "3/movie/upcoming?api_key=\(apiKey)&language=en-US&page=1"
    
    var videos = "3/movie/324857/videos?api_key=\(apiKey)&language=en-US"
    
    
}
