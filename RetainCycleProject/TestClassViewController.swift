//
//  TestClassViewController.swift
//  RetainCycleProject
//
//  Created by cm0620 on 2020/7/1.
//  Copyright © 2020 CMoney. All rights reserved.
//

import UIKit

/// 人物
class People {
    let name: String
    var macbook: Macbook?

    init(name: String, macbook: Macbook?) {
        self.name = name
        self.macbook = macbook
    }

    deinit {
        print("\(name) deinit.")
    }
}

/// 筆電
class Macbook {
    let name: String
    weak var owner: People? // <----- 必須加上weak才可以被釋放

    init(name: String, owner: People?) {
        self.name = name
        self.owner = owner
    }

    deinit {
        print("\(name) deinit.")
    }
}

/// [案例1] 兩個類別之間互指
class TestClassViewController: UIViewController {
    
    var people: People? = People(name: "人", macbook: nil)
    var macbook: Macbook? = Macbook(name: "筆電", owner: nil)

    override func viewDidLoad() {
       super.viewDidLoad()

       people?.macbook = macbook
       macbook?.owner = people
    }
}
