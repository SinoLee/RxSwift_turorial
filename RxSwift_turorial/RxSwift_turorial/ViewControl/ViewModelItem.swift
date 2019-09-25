//
//  ViewModelItem.swift
//  RxSwift_turorial
//
//  Created by Taeyoun Lee on 2019/09/25.
//  Copyright © 2019 SwiftLab. All rights reserved.
//

import RxSwift

class ViewModelItem {
    var identifier: String {
        return data["Identifier"] as? String ?? "Undefined"
    }
    var label: String {
        return data["Label"] as? String ?? "Undefined"
    }
    func value<T>(_ name: String) -> T? {
        return data[name] as? T
    }
    private let data: [String:Any]
    init(_ _data: [String:Any]) {
        self.data = _data
    }
}

