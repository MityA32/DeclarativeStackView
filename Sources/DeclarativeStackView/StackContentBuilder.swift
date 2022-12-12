//
//  StackContentBuilder.swift
//  DeclarativeStackView
//
//  Created by Dmytro Hetman on 12.12.2022.
//

import UIKit

@resultBuilder
struct StackContentBuilder {
    
    static func buildBlock(_ components: LayoutGroup...) -> [UIView] {
        components.flatMap { $0.views }
    }

    static func buildEither(first component: LayoutGroup) -> [UIView] {
        component.views
    }
    
    static func buildEither(second component: LayoutGroup) -> [UIView] {
        component.views
    }
    
    static func buildArray(_ components: [[UIView]]) -> [UIView] {
        components.flatMap { $0.views }
    }
    
    static func buildOptional(_ component: [UIView]?) -> [UIView] {
        component?.flatMap { $0.views } ?? []
    }
}

protocol LayoutGroup {
    var views: [UIView] { get }
}

extension UIView: LayoutGroup {
    var views: [UIView] { [self] }
}

extension Array: LayoutGroup where Element == UIView {
    var views: [UIView] { self }
}
