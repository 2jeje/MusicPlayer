//
//  TrackCollectionViewCell.swift
//  MusicPlayer
//
//  Created by letsbali on 2021/05/30.
//

import Foundation
import UIKit

class TrackCollectionViewCell : UICollectionViewCell {
    
    @IBOutlet weak var trackArtist: UILabel!
    @IBOutlet weak var trackThumbnail: UIImageView!
    @IBOutlet weak var trackTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        trackThumbnail.layer.cornerRadius = 4
        trackArtist.textColor = UIColor.systemGray2
    }
    
    
    func updateUI(item: Track?) {
        guard let track = item else { return }
        trackThumbnail.image = track.artwork
        trackTitle.text = track.title
        trackArtist.text = track.artist
    }
}
