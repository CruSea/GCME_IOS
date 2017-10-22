//
//  Devotional.swift
//  ismic
//
//  Created by Muluken on 6/18/17.
//  Copyright © 2017 GCME-EECMY. All rights reserved.
//

import Foundation
import Firebase



struct Devotion {
    
    var devoTitle: String!
    var devoSummary: String?
    var devoDetailnews: String?
    var devoPhotoURL: String!
    var ref: DatabaseReference?
    var key: String?
    
    init(snapshot: DataSnapshot){
        
        key = snapshot.key
        ref = snapshot.ref
        devoTitle = (snapshot.value! as! NSDictionary)["titledevo"] as! String
        devoSummary = (snapshot.value! as! NSDictionary)["detaildevo"] as? String
        devoDetailnews = (snapshot.value! as! NSDictionary)["detaildevo"] as? String
        devoPhotoURL = (snapshot.value! as! NSDictionary)["imagedevo"] as! String
        
    }
    
    
    //    func toAnyObject() -> [String: Any] {
    //        return ["email"]
    //    }
    
}
