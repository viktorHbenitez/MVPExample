//
//  TrafficLightPresenter.swift
//  MVPExample
//
//  Created by Saad El Oulladi on 20/09/2018.
//  Copyright © 2018 saadeloulladi. All rights reserved.
//

import Foundation

/*
 PRESENTER:
 Responding to user actions and updating the UI (DELEGATE)

 */

// MARK: - Protocol which contains all the methods that will be implemented in our view or (ViewContoller)
protocol TrafficLightViewDelegate: NSObjectProtocol {
    func displayTrafficLight(description:(String))
}

class TrafficLightPresenter {
    private let trafficLightService:TrafficLightService
    weak private var trafficLightViewDelegate : TrafficLightViewDelegate?
    
  // MARK: - INIT PRESENTER WITH MODEL INSTANCE
    init(trafficLightService:TrafficLightService){
        self.trafficLightService = trafficLightService
    }
    
    func setViewDelegate(trafficLightViewDelegate:TrafficLightViewDelegate?){
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }
    
  
  // MARK: - PRESENTER Responding to user actions and updating the UI BY DELEGATE
    func trafficLightColorSelected(colorName:(String)){

        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] traficLight in

            if let traficLight = traficLight {
              // update the UIView or UIViewController by delegate
                self?.trafficLightViewDelegate?.displayTrafficLight(description: traficLight.description)
            }
        }
    }
}
