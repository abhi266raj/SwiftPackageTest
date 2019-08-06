//
//  TimeLayer.swift
//  TimeLayer
//
//  Created by AbhirajKumar on 8/6/19.
//  Copyright © 2019 AbhirajKumar. All rights reserved.
//

import UIKit

public class TestLayer: CALayer {

     @objc dynamic public var seperator:CGFloat = 0.2


    override public class func needsDisplay(forKey key: String) -> Bool {
        if (key == "seperator"){
            print("time called")
            return true;
        }
        return super.needsDisplay(forKey: key);
    }
    
    override public func draw(in ctx: CGContext){
        let firstColor = UIColor.red.cgColor
        let secondCOlor = UIColor.green.cgColor
        let dividingPoint = bounds.size.width * seperator
        ctx.setFillColor(firstColor)
        ctx.setStrokeColor(UIColor.yellow.cgColor)
        ctx.setLineWidth(10)
        let rectangle1 = CGRect(x: 0, y: 0, width: dividingPoint, height: bounds.size.height)
        ctx.addRect(rectangle1)
        ctx.drawPath(using: .fillStroke)
        ctx.setFillColor(secondCOlor)
        let rectangle2 = CGRect(x: dividingPoint, y: 0, width:  bounds.size.width - dividingPoint, height: bounds.size.height)
        ctx.addRect(rectangle2)
        ctx.drawPath(using: .fillStroke)
        //ctx.


    }






    

}
