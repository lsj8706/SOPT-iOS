//
//  PageCollectionViewCell.swift
//  Presentation
//
//  Created by sejin on 2022/10/18.
//  Copyright © 2022 SOPT-iOS. All rights reserved.
//

import UIKit

final class PageCollectionViewCell: UICollectionViewCell {
    
    // MARK: - UI Components
    
    public var view: UIView? {
        didSet {
            self.setLayout()
        }
    }
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UI & Layout
    
    private func setLayout() {
        guard let view = view else { return }
        
        self.contentView.addSubview(view)
        
        view.snp.makeConstraints { make in
            make.edges.equalTo(contentView)
        }
    }
}
