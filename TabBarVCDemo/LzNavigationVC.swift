//
//  LzNavigationVC.swift
//  TabBarVCDemo
//
//  Created by mc on 2019/6/11.
//  Copyright © 2019年 lxf. All rights reserved.
//

import UIKit

class LzNavigationVC: UINavigationController, UINavigationControllerDelegate {

    var popDelegate : UIGestureRecognizerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.barTintColor = UIColor.green
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        popDelegate = interactivePopGestureRecognizer?.delegate
        delegate = self
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {

        if viewController == self.viewControllers[0] {
            self.interactivePopGestureRecognizer?.delegate = popDelegate
        } else {
            self.interactivePopGestureRecognizer?.delegate = nil
        }
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back_white")?.withRenderingMode(.alwaysOriginal), style: .plain, target: nil, action: #selector(LzNavigationVC.clickOnBack))
        }
        super.pushViewController(viewController, animated: true)
    }

    @objc func clickOnBack(){
        popViewController(animated: true)
    }
}
