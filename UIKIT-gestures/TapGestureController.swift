//
//  TapGestureController.swift
//  UIKIT-gestures
//
//  Created by Tsering Lama on 2/3/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class TapGestureController: UIViewController {
    
    @IBOutlet weak var heartImage: UIImageView!
    
    // 1) configure tap gesture
    private lazy var tapGesture: UITapGestureRecognizer = {
       let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(didTap(gesture:)))
      //  gesture.numberOfTouchesRequired = 1 // default
      //  gesture.numberOfTouchesRequired
       return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
    // 2) add tap gesture to image view
        heartImage.addGestureRecognizer(tapGesture)
    }
    
    // 3) selector(method) needed that gets called when the gesture is triggered
    @objc
    private func didTap(gesture: UITapGestureRecognizer) {
        // code here 
    }
}
