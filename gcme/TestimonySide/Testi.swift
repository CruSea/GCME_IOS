//
//  Testi.swift
//  ismic
//
//  Created by Muluken on 6/18/17.
//  Copyright © 2017 GCME-EECMY. All rights reserved.
//


import Foundation
import Firebase



struct Testi {
    
    var testimonyTitle: String!
    var testimonyDetail: String!
    var testimonyImages: String!

    var ref: DatabaseReference?
    var key: String?
    
    init(snapshot: DataSnapshot){
        
        key = snapshot.key
        ref = snapshot.ref
        
        testimonyTitle = (snapshot.value! as! NSDictionary)["titletesti"] as! String
        testimonyDetail = (snapshot.value! as! NSDictionary)["detailtesti"] as? String

        testimonyImages = (snapshot.value! as! NSDictionary)["imagetesti"] as! String
        
//        title = (snapshot.value! as! NSDictionary)["newstitle"] as! String
//        summary = (snapshot.value! as! NSDictionary)["newsdetail"] as? String
//        detailnews = (snapshot.value! as! NSDictionary)["newsdetail"] as? String
//        photoURL = (snapshot.value! as! NSDictionary)["newsimg"] as! String

        
    }
    

    
}
