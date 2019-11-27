//
//  SharePhotoController.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 11/27/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit

class SharePhotoController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.rgb(red: 240, green: 240, blue: 240)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Share", style: .plain, target: self, action: #selector(handleShare))
        
        setupImageAndTextViews()
    }
    
    fileprivate func setupImageAndTextViews() {
        let containerView = UIView()
        containerView.backgroundColor = .white
        
        view.addSubview(containerView)
        containerView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 100)
    }
    
    @objc func handleShare() {
        print("Sharing photo")
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
