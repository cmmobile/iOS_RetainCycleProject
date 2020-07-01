//
//  TestDelegateViewController.swift
//  RetainCycleProject
//
//  Created by cm0620 on 2020/3/13.
//  Copyright © 2020 CMoney. All rights reserved.
//

import UIKit

protocol DataManagerDelegate: class {
    func didGetData()
}

class DataManager{

    weak var delegate: DataManagerDelegate? // <----- 必須加上weak才可以被釋放
    func getData(){
        delegate?.didGetData()
    }
}

/// [案例2] Delegate的案例
class TestDelegateViewController: UIViewController {

    let dataManager = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataManager.delegate = self
        dataManager.getData()
    } 

    deinit {
        print("TestDelegate deinit.")
    }
    
}

extension TestDelegateViewController: DataManagerDelegate{
    func didGetData() {
    }
}
