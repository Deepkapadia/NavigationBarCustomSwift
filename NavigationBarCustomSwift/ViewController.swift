//
//  ViewController.swift
//  NavigationBarCustomSwift
//
//  Created by MACOS on 6/5/17.
//  Copyright © 2017 MACOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //system design navigation bar
        
        let item = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.bookmarks, target: self, action: #selector(self.handle));
        
        //set title for navigation bar
        
        self.navigationItem.title = "employee";
        
        //set custome title
        
        let v1 = UIView(frame: CGRect(x: 0, y: 0, width: 32, height: 32));
        let img12 = UIImageView(frame:v1.bounds);
        let im = UIImage(named: "imgicon.png");
        img12.image = im;
        
        v1.addSubview(img12);
        self.navigationItem.titleView = v1;
        
        //cutome BarButton item design
        
        let button = UIButton(type: UIButtonType.custom);
        
        button.frame = CGRect(x: 0, y: 0, width: 32, height: 32);
        button.addTarget(self, action: #selector(self.handle1), for: UIControlEvents.touchUpInside);
        button.setImage( UIImage(named: "info.jpg"), for: UIControlState.normal);
        button.layer.cornerRadius = 32/2;
        button.clipsToBounds = true;
        let info = UIBarButtonItem(customView: button);
        self.navigationItem.rightBarButtonItems = [item,info];
        
        //tool bar button
        
        let item1 = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.bookmarks, target: self, action: #selector(self.handle2));
        
        let button1 = UIButton(type: UIButtonType.custom);
        
        button1.frame = CGRect(x: 0, y: 0, width: 32, height: 32);
        button1.addTarget(self, action: #selector(self.handle1), for: UIControlEvents.touchUpInside);
        button1.setImage( UIImage(named: "info.jpg"), for: UIControlState.normal);
        button1.layer.cornerRadius = 32/2;
        button1.clipsToBounds = true;
        let info1 = UIBarButtonItem(customView: button1);
        
        
        self.toolbarItems = [item1,info1];
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handle(sender:UIBarButtonItem ) {
        
        print("clicked");
    }
    func handle2(sender:UIBarButtonItem ) {
        
        print("clicked");
    }
    func handle1(sender:UIBarButtonItem ) {
        
        print("clicked");
    }


}

