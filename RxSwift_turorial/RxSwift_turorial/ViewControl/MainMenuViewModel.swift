//
//  MainMenuViewModel.swift
//  RxSwift_turorial
//
//  Created by Taeyoun Lee on 2019/09/25.
//  Copyright © 2019 SwiftLab. All rights reserved.
//

import RxSwift

class MainMenuViewModel {
    // MARK: - Outputs
    var items: Observable<[ViewModelItem]> {
        
        let menu1Item = ViewModelItem([
            "Identifier":"PhoneNumber",
            "Label":"PhoneNumber",
        ])
        let menu2Item = ViewModelItem([
            "Identifier":"Connect",
            "Label":"Connect",
        ])
        let menu3Item = ViewModelItem([
            "Identifier":"DoNotDisturb",
            "Label":"Do Not Disturb",
        ])
        let menu4Item = ViewModelItem([
            "Identifier":"MessageForDND",
            "Label":"Message for DND",
        ])
        let menu5Item = ViewModelItem([
            "Identifier":"Incoming",
            "Label":"Incoming",
        ])
        let menu6Item = ViewModelItem([
            "Identifier":"Outgoing",
            "Label":"Outgoing",
        ])
        let menu7Item = ViewModelItem([
            "Identifier":"ChangePassword",
            "Label":"Change password",
        ])
        let menu8Item = ViewModelItem([
            "Identifier":"VerifyPhoneNumber",
            "Label":"Verify Phone Number",
        ])
        
        return Observable.just([
            menu1Item,
            menu2Item,
            menu3Item,
            menu4Item,
            menu5Item,
            menu6Item,
            menu7Item,
            menu8Item,
        ])
    }

}
