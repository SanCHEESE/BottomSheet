//
//  BottomSheetNavigationPullBar.swift
//  BottomSheet
//
//  Created by Mikhail Maslo on 14.11.2021.
//  Copyright © 2021 Joom. All rights reserved.
//

import UIKit

public extension BottomSheetPresentationController {
    final class PullBar: UIView {
        enum Style {
            static let size = CGSize(width: 36, height: 5)
        }

        private let centerView: UIView = {
            let view = UIView()
            view.frame.size = Style.size
            view.layer.cornerRadius = Style.size.height * 0.5
            return view
        }()

        init() {
            super.init(frame: .zero)

            backgroundColor = .clear

            setupSubviews()
        }

        required init?(coder: NSCoder) {
            preconditionFailure("init(coder:) has not been implemented")
        }

        func configureColors(handleColor: UIColor, backgroundColor: UIColor?) {
            centerView.backgroundColor = handleColor
            self.backgroundColor = backgroundColor
        }

        private func setupSubviews() {
            addSubview(centerView)
        }

        public override func layoutSubviews() {
            super.layoutSubviews()

            centerView.center = bounds.center
        }
    }
}
