//
//  TrackManager.swift
//  MusicPlayer
//
//  Created by letsbali on 2021/05/30.
//

import AVFoundation
import UIKit

class TrackManager {
    
    var tracks: [AVPlayerItem] = []
    var albums: [Album] = []
    var todaysTrack: AVPlayerItem?
    
    init() {
        let tracks = loadTracks()
        self.tracks = tracks
        self.albums = loadAlbum(tracks: tracks)
        self.todaysTrack = self.tracks.randomElement()
    }
    
    func loadTracks() -> [AVPlayerItem] {
        let urls = Bundle.main.urls(forResourcesWithExtension: "mp3", subdirectory: nil) ?? []

        let items = urls.map { url in
           return AVPlayerItem(url: url)
        }

        return items
    }
    
    func track(at index: Int) -> Track? {
        let playerItem = tracks[index]
        return playerItem.convertToTrack()
    }
    
    func loadAlbum(tracks: [AVPlayerItem]) -> [Album] {
        let trackList: [Track] = tracks.compactMap{
            $0.convertToTrack()
        }
        let albumDics = Dictionary(grouping: trackList, by: { track in
            track.albumName
        })
        
        var albums: [Album] = []
        for (key, value) in albumDics {
            let title = key
            let tracks = value
            let album = Album(title: title, tracks: tracks)
            albums.append(album)
        }
        
        return albums
    }
    
    func loadOtherTodaysTrack() {
        self.todaysTrack = self.tracks.randomElement()
    }
    
}
