//
//  MainMenuViewController.swift
//  RxSwift_turorial
//
//  Created by Taeyoun Lee on 2019/09/25.
//  Copyright © 2019 SwiftLab. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MainMenuViewController: UIViewController {

    let disposeBag = DisposeBag()
    let viewModel = MainMenuViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBindings()
    }
    private func setupBindings() {
        viewModel.items
            .observeOn(MainScheduler.instance)
            .bind(to: tableView.rx.items) { (tableView, row, cellItem) in
                let cell = tableView.dequeueReusableCell(withIdentifier: "MainMenu") as! MainMenuCell
                cell.configureCell(cellItem)
//                cell.switchChanged?
//                    .subscribe(onNext:{ [weak self] in self?.switchChanged(item: cellItem) })
//                    .disposed(by: cell.disposeBag)
//                cell.touchUpVerifyPhoneNumber?
//                    .subscribe(onNext:{ [weak self] in self?.verifyPhoneNumber() })
//                    .disposed(by: cell.disposeBag)
                return cell
            }
            .disposed(by: disposeBag)
        
        tableView.rx.modelSelected(ViewModelItem.self)
            .subscribe(onNext: { [weak self] in
                self?.showNext(by: $0)
                if let indexPath = self?.tableView.indexPathForSelectedRow {
                    self?.tableView.deselectRow(at: indexPath, animated: true)
                }
            })
            .disposed(by: disposeBag)
        
    }
    
    // MARK: - Navigation
    private func showNext(by item: ViewModelItem) {
        print("# Show next : \(item.identifier)")
        switch item.identifier {
        case "MessageForDND":
            //performSegue(withIdentifier: "ShowMessagesForDNDFromAccountInformation", sender: self)
            break
        case "ChangePassword":
            //showChangePasswordView()
            break
        default:
            break
        }
    }
}
