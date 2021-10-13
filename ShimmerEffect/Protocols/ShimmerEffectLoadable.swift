//
//  ShimmerEffectLoadable.swift
//  ShimmerEffect
//
//  Created by Sciffer Analytics on 13/10/21.
//

import UIKit

fileprivate let gradientColor1: CGColor = UIColor.init(white: 1, alpha: 0.2).cgColor
fileprivate let gradientColor2: CGColor = UIColor.init(white: 1, alpha: 1).cgColor

protocol ShimmerEffectLoadable: UIView {
    func startShimmerEffect()
    func stopShimmerEffect()
}

extension ShimmerEffectLoadable {
    
    private func getGradientLayer() -> CAGradientLayer {
        let layer = CAGradientLayer()
        layer.frame = bounds
        layer.startPoint = .init(x: .zero, y: 1)
        layer.endPoint = .init(x: 1, y: 1)
        layer.colors = [gradientColor1, gradientColor2, gradientColor1]
        layer.locations = [0, 0.5, 1]
        return layer
    }
    
    private func getShimmerAnimation() -> CABasicAnimation {
        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = [-1, -0.5, .zero]
        animation.toValue = [1, 1.5, 2]
        animation.repeatCount = .infinity
        animation.duration = 1.5
        return animation
    }
    
    func startShimmerEffect() {
        let gradientLayer = getGradientLayer()
        layer.mask = gradientLayer
        let shimmerAnimation = getShimmerAnimation()
        gradientLayer.add(shimmerAnimation, forKey: shimmerAnimation.keyPath)
    }
    
    func stopShimmerEffect() {
        layer.mask = nil
    }
    
}
