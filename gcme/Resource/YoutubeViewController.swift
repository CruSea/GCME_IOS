//
//  YoutubeViewController.swift
//  ismic
//
//  Created by Muluken on 7/3/17.
//  Copyright © 2017 GCME-EECMY. All rights reserved.
//

import UIKit
import YouTubePlayer_Swift

class YoutubeViewController: UIViewController {

    @IBOutlet weak var videoView: YouTubePlayerView!
    
    @IBOutlet weak var videoView1: YouTubePlayerView!
    @IBOutlet weak var videoView2: YouTubePlayerView!
    @IBOutlet weak var videoView3: YouTubePlayerView!
    @IBOutlet weak var videoView4: YouTubePlayerView!
    @IBOutlet weak var videoView5: YouTubePlayerView!
    @IBOutlet weak var videoView6: YouTubePlayerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videoView.loadVideoID("4O20zef-DkU")
        videoView1.loadVideoID("R8aGLJ1v5zI")
        videoView2.loadVideoID("BR1jwIPri6Q")
     

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
