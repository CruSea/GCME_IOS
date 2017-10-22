//
//  StratefyDetailVC.swift
//  gcme
//
//  Created by Xcode on 10/22/17.
//  Copyright © 2017 Xcode. All rights reserved.
//

import UIKit

class StratefyDetailVC: UIViewController {
    
    @IBOutlet weak var detailImageI: UIImageView!
    @IBOutlet weak var titleDet: UILabel!
    @IBOutlet weak var textDetal: UITextView!
    
    var getNewsTitle1: AnyObject? {
        
        get {
            return UserDefaults.standard.object(forKey: "newsTitle") as AnyObject?
        }
        
    }
    var getNewsDetail1: AnyObject? {
        
        get {
            return UserDefaults.standard.object(forKey: "newsDetail") as AnyObject?
        }
        
    }
    //get imagesfrom main eventviewcntroller
    var getNewsImage1: AnyObject? {
        
        get {
            return UserDefaults.standard.object(forKey: "newsImage") as AnyObject?
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        

        titleDet.text = getNewsTitle1 as? String
        textDetal.text = getNewsDetail1 as? String
        detailImageI.image = UIImage(named: getNewsImage1 as! String)
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
