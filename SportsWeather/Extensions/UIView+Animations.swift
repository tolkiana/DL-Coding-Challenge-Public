//
//  UIView+Animations.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/15/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

extension UIView {

    
    /// Animation to make a view appear based on its alpha value, after the animation
    /// it's executed the final alpha value is 1.
    ///
    /// - Parameters:
    ///   - duration: Duration for the animation
    ///   - completion: Aditional code to execute after the animation finished
    func fadeInAnimation(duration: TimeInterval, completion: (() -> Void)?) {
        let animationsBlock = {
            self.alpha = 1.0
        }
        let completionBlock = { (finished: Bool) -> Void in
            completion?()
        }
        
        UIView.animate(
            withDuration: duration,
            animations: animationsBlock,
            completion: completionBlock
        )
    }
    
    
    /// Animation to make a view appear based on it's alpha value. The appereance will show
    /// from bottom to top. The final alpha value after this animation is 1.
    ///
    /// - Parameters:
    ///   - duration: Duration for the animation
    ///   - completion: Aditional code to execute after the animation finished
    func slideInAnimation(duration: TimeInterval, completion: (() -> Void)?) {
        let originalFrame = self.frame
        var frame = self.frame
        frame.origin.y = originalFrame.origin.y + originalFrame.size.height/3
        self.frame = frame
        
        let animationsBlock = {
            self.frame = originalFrame
            self.alpha = 1.0
        }
        let completionBlock = { (finished: Bool) -> Void in
            completion?()
        }
        
        UIView.animate(
            withDuration: duration,
            animations: animationsBlock,
            completion: completionBlock
        )
    }
    
    /// Animation to make a view disappear based on it's alpha value. The disapperance is
    /// from to top bottom. The final alpha value after this animation is 0.
    ///
    /// - Parameters:
    ///   - duration: Duration for the animation
    ///   - completion: Aditional code to execute after the animation finished
    func slideOutAnimation(duration: TimeInterval, delay:TimeInterval, completion: (() -> Void)?) {
        let originalFrame = self.frame
        var frame = self.frame
        frame.origin.y = originalFrame.origin.y - originalFrame.size.height/3
        
        let animationsBlock = {
            self.frame = frame
            self.alpha = 0.0
        }
        let completionBlock = { (finished: Bool) -> Void in
            completion?()
        }
        
        UIView.animate(
            withDuration: duration,
            animations: animationsBlock,
            completion: completionBlock
        )
    }
}
