//
//  PlayerViewController.swift
//  MusicPlayer
//
//  Created by letsbali on 2021/05/30.
//

import UIKit

class PlayerViewController: UIViewController {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var artistLabel: UILabel!
    
    
    @IBOutlet weak var playControlButton: UIButton!
    
    @IBOutlet weak var timeSlider: UISlider!
    
    @IBOutlet weak var currentTimeLabel: UILabel!
    
    @IBOutlet weak var totalTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
}
