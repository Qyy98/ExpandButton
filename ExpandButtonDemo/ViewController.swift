//
//  ViewController.swift
//  ExpandButtonDemo
//
//  Created by Qian Yiyu on 2019/6/5.
//  Copyright © 2019 Qian Yiyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let bounds = CGRect(x: (self.view.frame.width - 100) / 2, y: (self.view.frame.height - 100) / 2, width: 100, height: 100)
        
        let area = UIView(frame: CGRect(x: bounds.origin.x - 100, y: bounds.origin.y - 100,
                                        width: 300, height: 300))
        area.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.3)
        self.view.addSubview(area)
        
        let button = ExpandButton(top: -100, left: -100, bottom: 100, right: 100)
        button.addTarget(self, action: #selector(clickExpandButton), for: .touchUpInside)
        button.setTitle("Button", for: .normal)
        button.backgroundColor = UIColor.red
        button.frame = bounds
        self.view.addSubview(button)
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func clickExpandButton() {
        print("button clicked")
    }


}

