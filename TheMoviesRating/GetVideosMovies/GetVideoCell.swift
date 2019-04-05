//
//  GetVideoCell.swift
//  TheMoviesRating
//
//  Created by Manish Behl on 05/04/19.
//  Copyright © 2019 Manish Behl. All rights reserved.
//

import UIKit
import YoutubePlayer_in_WKWebView

class GetVideoCell: UITableViewCell {

    @IBOutlet weak var videoPlayer: WKYTPlayerView!
    @IBOutlet weak var moviesTypeLbl: UILabel!
    @IBOutlet weak var moviesNameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    var VideoElements: VideoElements? {
        
        didSet {
            self.moviesNameLbl.text = VideoElements?.name
            self.moviesTypeLbl.text = VideoElements?.type
            self.videoPlayer.load(withVideoId: (VideoElements?.videoKey)!)
        }
    }
}
