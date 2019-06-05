//
//  ExpandButton.swift
//  ExpandButtonDemo
//
//  Created by Qian Yiyu on 2019/6/5.
//  Copyright © 2019 Qian Yiyu. All rights reserved.
//

import Foundation
import UIKit

class ExpandButton: UIButton {
    
    var offset_top: CGFloat!
    var offset_left: CGFloat!
    var offset_bottom: CGFloat!
    var offset_right: CGFloat!
    
    init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) {
        super.init(frame: .zero)
        self.offset_top = top
        self.offset_left = left
        self.offset_bottom = bottom
        self.offset_right = right
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let bounds = self.bounds
        let newBounds = CGRect(x: bounds.minX + offset_left, y: bounds.minY + offset_top, width: bounds.width - offset_left + offset_right, height: bounds.height - offset_top + offset_bottom)
        return newBounds.contains(point)
    }
    
}
