//
//  StrategiesCollectionViewController.swift
//  gcme
//
//  Created by Xcode on 10/22/17.
//  Copyright © 2017 Xcode. All rights reserved.
//

import UIKit


class StrategiesCollectionViewController: UICollectionViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    let departmentNames = ["Digital Strategies", "Leader Impact", "Student Led", "Church Led" , "National Prayer"]
    let icons = ["ds.jpg", "li.jpg", "sld.jpg","cld.jpg","npm.jpg"]
    let departmentDetail = ["We live in the digital era where communication is fast changing from face to face to virtual. According to a recent  global digital statistics 2.34 Billion  people have access to Television,  2.5 Billion People use internet ,  1.8 Billions are on Social Networks(Face book  alone has 1.184 Billion Users) and  4 Billion Mobile users globally. People interact more through their phones, get much of the information they need from internet and TV, and build social networks through the social media. \n\n The digitalization of the world is both a challenge and an opportunity for gospel. It is a challenge because people are being fed with too much wrong information through social media, TV and radio. We can say the enemy is using the digital media to divert people and pervert God’s truth. On the other hand, digital strategies present unprecedented opportunity for the gospel if used properly. \n\n We believe we should harness the opportunity that is being presented to us through the digital progress in the world. We can use mobile phones to train pastors or present short gospel messages, we can use TV or Radio to get wider audience for the gospel or we can use the social medial to build online communities that can easily share the gospel to their social networks.\n\n In summary we aspire we aspire to see and build spiritual movements through TV, radio, cell-phones and Internet so that everyone who has TV, radio, and Internet access or cell phone in Ethiopia and neighboring countries knows someone who truly follows Christ. \n\n At the end of 2014, in Ethiopia there will be 12 million internet users, there are 1.6 million Facebook users, 20 million mobile subscribers, and several million people have access to Television. Though this figure is not very big as compared to developed countries because the fact that the Lord is blessing our country we are seeing a fast holistic growth and development hastening digitalization system in the country. \n\n Great Commission Ministry Ethiopia believes if we act proactively and creatively the digital media presents an unprecedented opportunity for us in accomplishing our mission. We will play our role in redeeming the media for the glory of God, for the salvation of individuals and families, and for the transformation of communities.", "“When the righteous are in Authority, the people rejoice, But when a wicked man rules, the people groan” Proverb 29:2 \n\nThe rise and fall, the success and failure of an organization or a nation depend on the Leadership of that specific organization or nation. The contemporary definition of leadership is influence. Government Politicians, businessmen, professionals, senior experts, religious leaders and leaders in other walks of life have their own influence which directly affects the lives of their followers. \n\nTo see a righteous, peaceful, well developed, and transformed nation we need leaders of integrity and leaders who have servant hood in all circles. To enhance this noble task of building and transforming the nation church leaders, executives, professionals and businessmen play a key role as springboard in reaching the evangelical Christians and ultimately the nation at large. \n\nThe leader-led movement of Great commission Ministry Ethiopia has been training, equipping, envisioning, and empowering professionals and executives from business, religion, government, and media to help the holistic transformation of the society and the nation as a whole. \n\nWe seek to produce leaders of good character and competence by equipping them on how to practically live out biblical Christianity in their private and public lives. We work with and challenge existing Christian executives, professionals and businessmen to take their God given position of leadership and participate on nation building." , "The future of any nation depends on the quality of young leaders developed. These tomorrows key leaders are today’s students. Ethiopia, the second biggest population in Africa has the biggest population of students across the continent. \n\n\nFacts \n\nDue a high priority from the government the number of students is dramatically increasing in Ethiopia. In 2007 there were over 17 million1 students in Ethiopia. The students’ enrolment growth rate is increasing by 6.8 every year in high schools and about 8% in higher level education. \n\n There are only 17 fulltime staffs and 4 short term international internship (STINTs) involved in SLM.  Hundreds other volunteers and thousands of committed and passionate students are also part of what God is doing among the students in Ethiopia. \n\n Any investment made to equip, empower and release these students has a greater return in shaping the future of our nation in terms brings and sustain holistic transformation for the well being of human being. That is why we say, “Win the Campus today, Win the World tomorrow.”","The future of any nation depends on the quality of young leaders developed. These tomorrows key leaders are today’s students. Ethiopia, the second biggest population in Africa has the biggest population of students across the continent. \n\nFacts \n\nDue a high priority from the government the number of students is dramatically increasing in Ethiopia. In 2007 there were over 17 million1 students in Ethiopia. The students’ enrolment growth rate is increasing by 6.8 every year in high schools and about 8% in higher level education. \n\n There are only 17 fulltime staffs and 4 short term international internship (STINTs) involved in SLM.  Hundreds other volunteers and thousands of committed and passionate students are also part of what God is doing among the students in Ethiopia. \n\n Any investment made to equip, empower and release these students has a greater return in shaping the future of our nation in terms brings and sustain holistic transformation for the well being of human being. That is why we say, “Win the Campus today, Win the World tomorrow.”", "National prayer movement \n\nAs a national prayer movement God challenged us with the verse below and we accepted the challenge and began to act. \n\nIsa 1:25-26,”And I will turn my hand upon thee, and purely purge away thy dross, and take away all thy tin: And I will restore thy judges as at the first, and thy counsellors as at the beginning: afterward thou shalt be called, the city of righteousness, the faithful city.” \n\nThe focus of the verse is two, the first one is restoration (we need to come back to the original love for God) and the second one is that witnessing the reason why this city was chosen. \n\nWe have four directions to have a right kind of restoration and to be a witness of our Lord Jesus Christ through our lives and what we talk." ]
    
    
    var sendNewsTitle: AnyObject? {
        
        get {
            return UserDefaults.standard.object(forKey: "newsTitle") as AnyObject?
        }
        set {
            UserDefaults.standard.set(newValue!, forKey: "newsTitle")
            UserDefaults.standard.synchronize()
        }
    }
    var sendNewsDetail: AnyObject? {
        
        get {
            return UserDefaults.standard.object(forKey: "newsDetail") as AnyObject?
        }
        set {
            UserDefaults.standard.set(newValue!, forKey: "newsDetail")
            UserDefaults.standard.synchronize()
        }
    }
    var sendNewsImage: AnyObject? {
        
        get {
            return UserDefaults.standard.object(forKey: "newsImage") as AnyObject?
        }
        set {
            UserDefaults.standard.set(newValue!, forKey: "newsImage")
            UserDefaults.standard.synchronize()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if revealViewController() != nil {
            
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            
            
            
            //            alertButton.target = revealViewController()
            //            alertButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        //reload data
        collectionView?.reloadData()
    
    }
    

 

   
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
       
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return departmentNames.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "strategy", for: indexPath) as! StrategiesCollectionViewCell
    
        cell.depName.text = departmentNames[indexPath.row]
        let image = UIImage(named: icons[indexPath.row])
        cell.icon.image = image
      
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        sendNewsTitle = departmentNames[indexPath.row] as AnyObject
        sendNewsImage = icons[indexPath.row] as AnyObject?
        sendNewsDetail = departmentDetail[indexPath.row] as AnyObject?
        
        
    }

}
