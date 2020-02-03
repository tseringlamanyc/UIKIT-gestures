//
//  GesturesTabController.swift
//  UIKIT-gestures
//
//  Created by Tsering Lama on 2/3/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class GesturesTabController: UITabBarController {
    
    private var tapGestureVC = TapGestureController()
    private var swipeGestureVC = SwipeGestureController()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [tapGestureVC, swipeGestureVC]
    }
}
