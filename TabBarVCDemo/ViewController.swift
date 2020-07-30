//
//  ViewController.swift
//  TabBarVCDemo
//
//  Created by mc on 2019/6/10.
//  Copyright © 2019年 lxf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.orange

        
        let nextButton = UIButton(frame: CGRect(x: 20, y: 100, width: 80, height: 40))
        nextButton.addTarget(self, action: #selector(clickToNext), for: .touchUpInside)
        nextButton.setTitle("下一页", for: .normal)
        view.addSubview(nextButton)
    }

    @objc func clickToNext(){
        let vc = LzSecondVC()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

