//
//  MainViewController.swift
//  Trial
//
//  Created by SL_linker on 16/6/11.
//  Copyright © 2016年 SL_linker. All rights reserved.
//

import UIKit

class MainViewController: UINavigationController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.translucent = false
        view.backgroundColor = UIColor.yellowColor()
        addChildViewController(TabViewController())
        
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        let userIcon = UIButton(type: UIButtonType.System)
        userIcon.setImage(UIImage(named: "userIcon"), forState: UIControlState.Normal)
        userIcon.backgroundColor = UIColor.blueColor()
        userIcon.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: userIcon)
        
        userIcon.addTarget(self, action: #selector(DrawViewController.barButtonAction), forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
