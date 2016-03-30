//
//  ViewController.swift
//  Autolayout
//
//  Created by Jan Mísař on 30.03.16.
//  Copyright © 2016 Ackee. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Lorem ipsum dolor sit amet"
        //label.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
//        self.view.addSubview(label)
//        label.snp_makeConstraints { make in
//            make.leading.equalTo(20)
//            make.trailing.equalTo(-20)
//            make.top.equalTo(0)
//        }
        
        let redView = UIView()
        redView.backgroundColor = .redColor()
//        self.view.addSubview(redView)
//        redView.snp_makeConstraints { make in
//            make.leading.equalTo(label.snp_leading)
//            make.top.equalTo(label.snp_bottom)
//            make.height.equalTo(100)
//        }
        
        let blueView = UIView()
        blueView.backgroundColor = .blueColor()
//        self.view.addSubview(blueView)
//        blueView.snp_makeConstraints { make in
//            make.leading.equalTo(redView.snp_trailing)
//            make.trailing.equalTo(label.snp_trailing)
//            make.top.equalTo(redView.snp_top)
//            make.height.equalTo(redView.snp_height)
//            make.width.equalTo(redView.snp_width)
//        }
        
        let profileImage = UIImage(named: "avatar")
        let profilePictureView = UIImageView(image: profileImage)
//        self.view.addSubview(profilePictureView)
//        profilePictureView.snp_makeConstraints { make in
//            make.leading.equalTo(20)
//            make.top.equalTo(redView.snp_bottom).offset(20)
//        }
//        profilePictureView.setContentHuggingPriority(UILayoutPriorityRequired, forAxis: .Horizontal)
        
        let titleLabel = UILabel()
        titleLabel.text = "Jan Mísař"
//        self.view.addSubview(titleLabel)
//        titleLabel.snp_makeConstraints { make in
//            make.leading.equalTo(profilePictureView.snp_trailing).offset(20)
//            make.centerY.equalTo(profilePictureView)
//            make.trailing.equalTo(-20)
//        }
        
        let redBlueStackView = UIStackView(arrangedSubviews: [redView, blueView])
        redBlueStackView.axis = .Horizontal
        
        let pictureNameStackView = UIStackView(arrangedSubviews: [profilePictureView, titleLabel])
        pictureNameStackView.axis = .Horizontal
        
        let verticalStackView = UIStackView(arrangedSubviews: [label, redBlueStackView, pictureNameStackView])
        verticalStackView.axis = .Vertical
        self.view.addSubview(verticalStackView)
        verticalStackView.snp_makeConstraints { make in
            make.leading.top.equalTo(20)
            make.trailing.equalTo(-20)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

