//
//  StackContentBuilder.swift
//  DeclarativeStackView
//
//  Created by Dmytro Hetman on 12.12.2022.
//

import UIKit

@resultBuilder
public struct StackContentBuilder {
    
    public static func buildBlock(_ components: LayoutGroup...) -> [UIView] {
        components.flatMap { $0.views }
    }

    public static func buildEither(first component: LayoutGroup) -> [UIView] {
        component.views
    }
    
    public static func buildEither(second component: LayoutGroup) -> [UIView] {
        component.views
    }
    
    public static func buildArray(_ components: [[UIView]]) -> [UIView] {
        components.flatMap { $0.views }
    }
    
    public static func buildOptional(_ component: [UIView]?) -> [UIView] {
        component?.flatMap { $0.views } ?? []
    }
}

public protocol LayoutGroup {
    var views: [UIView] { get }
}

extension UIView: LayoutGroup {
    public var views: [UIView] { [self] }
}

extension Array: LayoutGroup where Element == UIView {
    public var views: [UIView] { self }
}
