//
//  LayerDelegate.swift
//  TimeLayer
//
//  Created by AbhirajKumar on 8/6/19.
//  Copyright © 2019 AbhirajKumar. All rights reserved.
//

import UIKit

public class TestLayerDelegate:NSObject, CALayerDelegate {

    public func draw(_ layer: CALayer, in ctx: CGContext){
        if let newLayer = layer as? TestLayer{
        let firstColor = UIColor.red.cgColor
        let secondCOlor = UIColor.green.cgColor
        let dividingPoint = layer.bounds.size.width * newLayer.seperator
        ctx.setFillColor(firstColor)
        ctx.setStrokeColor(UIColor.yellow.cgColor)
        ctx.setLineWidth(10)
        let rectangle1 = CGRect(x: 0, y: 0, width: dividingPoint, height: layer.bounds.size.height)
        ctx.addRect(rectangle1)
        ctx.drawPath(using: .fillStroke)
        ctx.setFillColor(secondCOlor)
        let rectangle2 = CGRect(x: dividingPoint, y: 0, width:  layer.bounds.size.width - dividingPoint, height: layer.bounds.size.height)
        ctx.addRect(rectangle2)
        ctx.drawPath(using: .fillStroke)
        }
        
    }

}
