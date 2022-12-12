//
//  DeclarativeStackView.swift
//  DeclarativeStackView
//
//  Created by Dmytro Hetman on 12.12.2022.
//


import UIKit


public class DeclarativeStackView: UIStackView {
    
    static var vertical: DeclarativeStackView = {
        initialize(with: .vertical)
    }()
    
    static var horizontal: DeclarativeStackView = {
        initialize(with: .horizontal)
    }()
    
    static func initialize(with axis: NSLayoutConstraint.Axis) -> DeclarativeStackView {
        let stackView = DeclarativeStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = axis
        return stackView
    }
    
}


extension DeclarativeStackView {
    
    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    @discardableResult
    func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
    
    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    @discardableResult
    func arranged(@StackContentBuilder views: () -> [UIView]) -> Self {
        views().forEach { addArrangedSubview($0) }
        return self
    }
    
    
}
