//
//  ViewController.swift
//  RxSwiftTryout
//
//  Created by Gabe Heafitz on 6/13/18.
//  Copyright © 2018 ShopKeep. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!

    lazy var buttonPublishSubject: PublishSubject<UIButton> = {
        return PublishSubject<UIButton>()
    }()

    class ViewModel {

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        button.rx.isSelected.on(.completed)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

