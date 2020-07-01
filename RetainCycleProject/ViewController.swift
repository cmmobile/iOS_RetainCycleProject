//
//  ViewController.swift
//  RetainCycleProject
//
//  Created by cm0620 on 2020/3/13.
//  Copyright © 2020 CMoney. All rights reserved.
//

import UIKit

/// 主畫面
class ViewController: UIViewController {

    @IBAction func onClickTestClass(_ sender: UIButton) {
        let vc = TestClassViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickTestDelegate(_ sender: UIButton) {
        let vc = TestDelegateViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickTestClosure1(_ sender: UIButton) {
        let vc = TestClosure1ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickTestClosure2(_ sender: UIButton) {
        let vc = TestClosure2ViewController() 
        navigationController?.pushViewController(vc, animated: true)
    }
}

