//
//  FruitView.swift
//  Frutinhas
//
//  Created by Marília de Sousa on 13/10/22.
//

import UIKit

class FruitView: UIView {

    private let label: UILabel = {
        let label = UILabel()
//        label.textAlignment.center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(
            x: 10,
            y: 10,
            width: frame.size.width - 20,
            height: frame.size.width - 20
            )
    }
}
