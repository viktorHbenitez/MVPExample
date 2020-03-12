//
//  TrafficLightViewController.swift
//  MVPExample
//
//  Created by Saad El Oulladi on 25/09/2018.
//  Copyright © 2018 saadeloulladi. All rights reserved.
//

import UIKit


class TrafficLightViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
  
  // MARK: - INSTANCE THE PRESENTER WITH THE MODEL REFERENCE
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      // MARK: - THIS VIEW OR VIEWCONTROLLER IS THE DELEGATE
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }
    
  
  // MARK: - USER ACTIONS @IBACTIONS, COMMUNICATE TO THE PRESENTER
    @IBAction func redLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Red")
    }
    
    @IBAction func yellowLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Yellow")
    }
    
    @IBAction func greenLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Green")
    }
    
    
}

// MARK: - UPDATE THE VIEW, USING DELEGATE
extension TrafficLightViewController : TrafficLightViewDelegate{
  func displayTrafficLight(description:(String)) {
      descriptionLabel.text = description
  }
}
