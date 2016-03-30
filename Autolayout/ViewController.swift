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
        
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Lorem ipsum dolor sit amet"
        //label.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        self.view.addSubview(label)
        
        label.snp_makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.top.equalTo(20)
        }
        
        let redView = UIView()
        redView.backgroundColor = .redColor()
        self.view.addSubview(redView)
        redView.snp_makeConstraints { make in
            make.leading.equalTo(label.snp_leading)
            make.top.equalTo(label.snp_bottom)
            make.height.equalTo(100)
        }
        
        let blueView = UIView()
        blueView.backgroundColor = .blueColor()
        self.view.addSubview(blueView)
        blueView.snp_makeConstraints { make in
            make.leading.equalTo(redView.snp_trailing)
            make.trailing.equalTo(label.snp_trailing)
            make.top.equalTo(redView.snp_top)
            make.height.equalTo(redView.snp_height)
            make.width.equalTo(redView.snp_width)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

