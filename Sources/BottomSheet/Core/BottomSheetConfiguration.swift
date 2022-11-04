//
//  BottomSheetConfiguration.swift
//  BottomSheetDemo
//
//  Created by Mikhail Maslo on 15.08.2022.
//  Copyright © 2022 Joom. All rights reserved.
//

import UIKit

public struct BottomSheetConfiguration {
    public enum PullBarConfiguration {
        public struct PullBarAppearance {
            public let height: CGFloat
            public let handleColor: UIColor
            public let backgroundColor: UIColor

            public init(height: CGFloat,
                        handleColor: UIColor,
                        backgroundColor: UIColor) {

                self.handleColor = handleColor
                self.backgroundColor = backgroundColor
                self.height = height
            }
        }

        case hidden
        case visible(PullBarAppearance)

        public static let `default`: PullBarConfiguration = .visible(PullBarAppearance(height: 16,
                                                                                       handleColor: UIColor(red: 0.24, green: 0.24, blue: 0.26, alpha: 0.18),
                                                                                       backgroundColor: .white))
    }

    public struct ShadowConfiguration {
        public let backgroundColor: UIColor

        public init(backgroundColor: UIColor) {
            self.backgroundColor = backgroundColor
        }

        public static let `default` = ShadowConfiguration(backgroundColor: UIColor(red: 0.02, green: 0, blue: 0, alpha: 0.4))
    }

    public let cornerRadius: CGFloat
    public let pullBarConfiguration: PullBarConfiguration
    public let shadowConfiguration: ShadowConfiguration

    public init(
        cornerRadius: CGFloat,
        pullBarConfiguration: PullBarConfiguration,
        shadowConfiguration: ShadowConfiguration
    ) {
        self.cornerRadius = cornerRadius
        self.pullBarConfiguration = pullBarConfiguration
        self.shadowConfiguration = shadowConfiguration
    }

    public static let `default` = BottomSheetConfiguration(
        cornerRadius: 10,
        pullBarConfiguration: .default,
        shadowConfiguration: .default
    )
}
