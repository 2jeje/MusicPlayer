//
//  TrackCollectionHeaderView.swift
//  MusicPlayer
//
//  Created by letsbali on 2021/05/30.
//

import UIKit
import AVFoundation

class TrackCollectionHeaderView: UICollectionReusableView {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var item: AVPlayerItem?
    var tapHandler: ((AVPlayerItem) -> Void)?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 4
    }
    
    func update(with item: AVPlayerItem) {
        
    }
    
    @IBAction func cardTapped(_ sender: UIButton) {
        
    }
}
