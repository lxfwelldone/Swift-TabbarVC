//
//  LzTabBarVC.swift
//  TabBarVCDemo
//
//  Created by mc on 2019/6/10.
//  Copyright © 2019年 lxf. All rights reserved.
//

import UIKit

class LzTabBarVC: UITabBarController {

    var titles : [String] = []
    var images_normal : [String] = []
    var images_selected : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        initValues()
        initVCs()
        initTabBarItems()
    }
    
    
   private func initValues(){
        titles = ["首页","应用","资讯","通讯录","我的"]
        images_normal = ["menu1","menu2","menu3","menu6","menu4"]
        images_selected = ["menu1_active","menu2_active","menu3_active","menu6_active","menu4_active"]
    }
    
    private func initVCs(){
        let vc1 = ViewController()
        let vc2 = ViewController()
        let vc3 = ViewController()
        let vc4 = ViewController()
        let vc5 = ViewController()

        let nav1 = LzNavigationVC(rootViewController: vc1)
        let nav2 = LzNavigationVC(rootViewController: vc2)
        let nav3 = LzNavigationVC(rootViewController: vc3)
        let nav4 = LzNavigationVC(rootViewController: vc4)
        let nav5 = LzNavigationVC(rootViewController: vc5)

        viewControllers = [nav1, nav2, nav3, nav4, nav5]

    }
    
    private func initTabBarItems(){
        for index in 0..<titles.count{
            let image = UIImage(named: images_normal[index])?.withRenderingMode(.alwaysOriginal)
            let imageSelected = UIImage(named: images_selected[index])?.withRenderingMode(.alwaysOriginal)
//            let item = UITabBarItem(title: titles[index], image: image, selectedImage: imageSelected)
            let item = tabBar.items?[index]
            item?.image = image
            item?.selectedImage = imageSelected
            item?.title = titles[index]
            //调整文字的位置
//            item?.titlePositionAdjustment = UIOffset(horizontal: 0.0, vertical: 5)
            
//            if index == 2 {
//                item?.imageInsets = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
//            }
//
//            item?.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.black, NSAttributedString.Key.font:UIFont.systemFont(ofSize: 13)], for: .normal)
//            item?.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.red, NSAttributedString.Key.font:UIFont.systemFont(ofSize: 13)], for: .selected)
        }
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.gray, NSAttributedString.Key.font:UIFont.systemFont(ofSize: 13)], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.green, NSAttributedString.Key.font:UIFont.systemFont(ofSize: 13)], for: .selected)
        
        tabBar.barTintColor = UIColor.white
        tabBar.isTranslucent = false
    }


}
