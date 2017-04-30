//
//  ViewController.swift
//  BannerFacebookDemo
//
//  Created by Thieu Mao on 4/30/17.
//  Copyright © 2017 Hay Nhanh. All rights reserved.
//

import UIKit
import FBAudienceNetwork

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBannerFacebookAds()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addBannerFacebookAds() {
        let adView: FBAdView = FBAdView(placementID: "1828390194091176_1841520096111519", adSize: kFBAdSize320x50, rootViewController: self)
        adView.delegate = self
        //        adView.frame = CGRect(x: 0, y: 20, width: adView.bounds.size.width, height: adView.bounds.size.height)
        adView.loadAd()
        self.view.addSubview(adView)
    }

}

extension ViewController: FBAdViewDelegate {
    
    func adView(_ adView: FBAdView, didFailWithError error: Error) {
        print("didFailWithError")
    }
    
    func adViewDidClick(_ adView: FBAdView) {
        print("adViewDidClick")
    }
    
    func adViewDidLoad(_ adView: FBAdView) {
        print("adViewDidLoad")
    }
    
    func adViewDidFinishHandlingClick(_ adView: FBAdView) {
        print("adViewDidFinishHandlingClick")
    }
    
    func adViewWillLogImpression(_ adView: FBAdView) {
        print("adViewWillLogImpression")
    }
    
}

