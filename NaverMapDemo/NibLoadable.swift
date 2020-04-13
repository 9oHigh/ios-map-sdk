//
//  NibLoadable.swift
//  NaverMapDemo
//
//  Created by hyejin on 31/12/2019.
//  Copyright © 2019 NaverCorp. All rights reserved.
//

import UIKit

protocol NibLoadable {}
extension NibLoadable where Self: UIView {
    func loadViewFromNib() -> UIView! {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
    
    func setupUIFromNib(_ setAutoResizingMask: Bool = true) {
        let contentView: UIView = loadViewFromNib()
        contentView.frame = bounds

        if setAutoResizingMask {
            contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }

        backgroundColor = .clear

        addSubview(contentView)
    }
}
