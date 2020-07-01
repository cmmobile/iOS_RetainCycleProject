//
//  TestClosure1ViewController.swift
//  RetainCycleProject
//
//  Created by cm0620 on 2020/3/13.
//  Copyright © 2020 CMoney. All rights reserved.
//

import UIKit

class StockManager{

    //取得新股票資料
    func getNewStock(didComplete: @escaping ((String) -> Void)){
        didComplete("更新完成")
    }
}

/// [案例3] Closure當方法參數的案例
class TestClosure1ViewController: UIViewController {

    var label = UILabel()
    
    let stockManager = StockManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stockManager.getNewStock { newStock in // <----- Closure沒有被Hold著，不加上weak也可以被釋放
            self.label.text = newStock
        }
    }

    deinit {
        print("TestClosure1 deinit.")
    }
    
}
