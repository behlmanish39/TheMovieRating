//
//  UpcomingCell.swift
//  TheMoviesRating
//
//  Created by Manish Behl on 04/04/19.
//  Copyright © 2019 Manish Behl. All rights reserved.
//

import UIKit

class UpcomingCell: UITableViewCell {

    @IBOutlet weak var titlelbl: UILabel!
    @IBOutlet weak var vote_averageLbl: UILabel!
    @IBOutlet weak var vote_countLbl: UILabel!
    @IBOutlet weak var moviesRelseDatelbl: UILabel!
    @IBOutlet weak var overviewTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var upcomingRoute: UpcomingData? {
        
        didSet{
            
            self.titlelbl.text = "Tile : " + upcomingRoute!.titleLabel
            self.vote_averageLbl.text = "VoteAverage : " + String(describing:upcomingRoute!.voteAvrg)
            self.vote_countLbl.text = "VoteCount : " + String(describing: upcomingRoute!.voteCount)
            self.moviesRelseDatelbl.text = "MovieReleaseDate : " + upcomingRoute!.movieDateRelse
            self.overviewTextView.text = upcomingRoute!.overviewText
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
