//
//  MainMenuCell.swift
//  RxSwift_turorial
//
//  Created by Taeyoun Lee on 2019/09/25.
//  Copyright © 2019 SwiftLab. All rights reserved.
//

import UIKit
import RxSwift

class MainMenuCell: UITableViewCell {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(_ item: ViewModelItem) {
        let label = item.label
        switch item.identifier {
        case "PhoneNumber":
            mainLabel.text = "#1 \(label)"
        case "Connect":
            mainLabel.text = "#2 \(label)"
        case "DoNotDisturb":
            mainLabel.text = "#3 \(label)"
        case "MessageForDND":
            mainLabel.text = "#4 \(label)"
        case "Incoming":
            mainLabel.text = "#5 \(label)"
        case "Outgoing":
            mainLabel.text = "#6 \(label)"
        case "ChangePassword":
            mainLabel.text = "#7 \(label)"
        case "VerifyPhoneNumber":
            mainLabel.text = "#8 \(label)"
        default:
            break
        }
    }
}
