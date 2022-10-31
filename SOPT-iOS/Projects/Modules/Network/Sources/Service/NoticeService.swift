//
//  NoticeService.swift
//  Network
//
//  Created by Junho Lee on 2022/10/17.
//  Copyright © 2022 SOPT-iOS. All rights reserved.
//

import Foundation
import Combine

import Alamofire
import Moya

public typealias DefaultNoticeService = BaseService<NoticeAPI>

public protocol NoticeService {
    func fetchNoticeDetail(noticeId: Int) -> AnyPublisher<PostDetailEntity?, Error>
    func fetchNoticeList(partName: String) ->
        AnyPublisher<PostListEntity?, Error>
}

extension DefaultNoticeService: NoticeService {
    public func fetchNoticeDetail(noticeId: Int) -> AnyPublisher<PostDetailEntity?, Error> {
        return test.requestObjectInCombine(.fetchNoticeDetail(noticeId: noticeId))
    }
    
    public func fetchNoticeList(partName: String) ->
    AnyPublisher<PostListEntity?, Error> {
        return test.requestObjectInCombine(.fetchNoticeList(partName: partName))
    }
}
