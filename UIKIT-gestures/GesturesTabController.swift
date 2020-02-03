//
//  GesturesTabController.swift
//  UIKIT-gestures
//
//  Created by Tsering Lama on 2/3/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class GesturesTabController: UITabBarController {
    
    private lazy var tapGestureVC: TapGestureController = {
        let storyboard = UIStoryboard(name: "TapGesture", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "TapGestureController") as? TapGestureController else {
            fatalError()
        }
        return vc
    }()
    
    private lazy var swipeGestureVC = SwipeGestureController()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [tapGestureVC, swipeGestureVC]
    }
}
