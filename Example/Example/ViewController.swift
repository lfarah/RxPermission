//
//  ViewController.swift
//  Example
//
//  Created by ebt on 2016/12/9.
//  Copyright © 2016年 ebt. All rights reserved.
//

import UIKit
import RxPermission
import Permission
import RxSwift

class ViewController: UIViewController {
    let disposeBag = DisposeBag()
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let permissions:[Permission] = [
            .mediaLibrary,
            .notifications,
            .locationAlways, .locationWhenInUse,
            .addressBook,
            .events,
            .motion,
            .contacts,
            .photos,
            .bluetooth,
            .microphone,
            .camera
        ]
        
        permissions.forEach {
            print("\($0): \($0.status)")
        }

        Permission.contacts.rx
            .status
            .subscribe(onNext: { status in
                self.label.text = "contacts Status: \(status)"
            })
            .addDisposableTo(disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

