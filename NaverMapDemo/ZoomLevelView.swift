//
//  ZoomLevelView.swift
//  NaverMapDemo
//
//  Created by hyejin on 31/12/2019.
//  Copyright © 2019 NaverCorp. All rights reserved.
//

import UIKit

internal class ZoomLevelView: UIView, NibLoadable {
    @IBOutlet weak var zoomLevelLabel: UILabel!

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIFromNib()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUIFromNib()
    }

    func setZoomLevel(_ zoomLevel: Double) {
        zoomLevelLabel.text = String(format: "%.2f", zoomLevel)
    }
}

