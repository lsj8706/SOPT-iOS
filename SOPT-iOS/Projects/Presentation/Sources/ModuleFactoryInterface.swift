//
//  ModuleFactoryInterface.swift
//  Presentation
//
//  Created by 양수빈 on 2022/10/07.
//  Copyright © 2022 SOPT-iOS. All rights reserved.
//

import Foundation

public protocol ModuleFactoryInterface {
    func makePostListVC() -> PostListVC
    func makePostDetailVC() -> PostDetailVC
}
