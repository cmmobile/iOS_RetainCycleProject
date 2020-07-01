//
//  TestClosure2ViewController.swift
//  RetainCycleProject
//
//  Created by cm0620 on 2020/3/16.
//  Copyright © 2020 CMoney. All rights reserved.
//

import UIKit

class MemberManager{
    
    var didChangeMember: ((String) -> Void)?
    
    func changeMember(){
        didChangeMember?("更換會員")
    }
}

/// [案例4] Closure當類別的屬性的案例 <---- 效果delegate的用法
class TestClosure2ViewController: UIViewController {

    var label = UILabel()
    
    let memberManager = MemberManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memberManager.didChangeMember = { [weak self] value in // <----- Closure被Hold著，必須加上weak才可以被釋放
            guard let self = self else { return }
            self.label.text = value
        }
        
        memberManager.changeMember()
    }

    deinit {
        print("TestClosure2 deinit.")
    }
    
}

