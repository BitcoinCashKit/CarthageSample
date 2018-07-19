//
//  ViewController.swift
//  CarthageSample
//
//  Created by Shun Usami on 2018/07/19.
//  Copyright © 2018 mikan Co., Ltd. All rights reserved.
//

import UIKit
import BitcoinKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let address = try! AddressFactory.create("bitcoincash:qz936smm809wq0eqthqyh2sgdzhs7v08nvnuq0dmps")
        print(address.base58, address.cashaddr)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

