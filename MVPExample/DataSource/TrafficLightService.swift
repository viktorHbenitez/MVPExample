//
//  TrafficLightService.swift
//  MVPExample
//
//  Created by Saad El Oulladi on 20/09/2018.
//  Copyright © 2018 saadeloulladi. All rights reserved.
//

import Foundation

/*
 IMPORTANT:
 PRESENTER UPDATE THE MODEL
 MODEL NOTIFY PRESENTER
 */

// MARK: - 1. DATA PROVIDER, service
class TrafficLightService {
    
  // MARK: - PRESENTER update the model
    func getTrafficLight(colorName:(String), callBack:(TrafficLight?) -> Void) {
        let trafficLights = [TrafficLight(colorName: "Red", description: "Stop"),
                             TrafficLight(colorName: "Green", description: "Go"),
                             TrafficLight(colorName: "Yellow", description: "About to change to red")
        ]
        
      // MARK: - MODEL notify PRESENTER by closure
        if let foundTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
            callBack(foundTrafficLight)
        } else {
            callBack(nil)
        }
    }
}
