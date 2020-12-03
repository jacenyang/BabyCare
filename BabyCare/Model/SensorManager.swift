//
//  SensorManager.swift
//  BabyCare
//
//  Created by Jason Yang on 25/11/20.
//

import Foundation

protocol SensorManagerDelegate {
    func didUpdateSensor(_ sensorManager: SensorManager, sensor: SensorModel)
    func didFailWithError(error: Error)
}

struct SensorManager {
    
    //    let sensorURL = "https://api.thingspeak.com/channels/592779/feeds.json"
    
    var delegate: SensorManagerDelegate?
    
    func fetchSensor() {
        if let urlString = UserDefaults.standard.string(forKey: "sensorURL") {
            performRequest(with: urlString)
        }
    }
    
    func performRequest(with urlString: String) {
        //1. Create a URL
        if let url = URL(string: urlString) {
            //2. Create a URLSession
            let session = URLSession(configuration: .default)
            //3. Give the URLSession a task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let sensor = self.parseJSON(safeData) {
                        self.delegate?.didUpdateSensor(self, sensor: sensor)
                    }
                }
            }
            //4. Start the task
            task.resume()
        }
    }
    
    func parseJSON(_ sensorData: Data) -> SensorModel? {
        
        let decoder = JSONDecoder()
        do {
            
            let decodedData = try decoder.decode(SensorData.self, from: sensorData)
            let created_at = (decodedData.feeds.last?.created_at)!
            let field1 = (decodedData.feeds.last?.field1)!
            let field2 = (decodedData.feeds.last?.field2)!
            let field3 = (decodedData.feeds.last?.field3)!
            let field4 = (decodedData.feeds.last?.field4)!
            let field5 = (decodedData.feeds.last?.field5)!
            let sensor = SensorModel(isoDate: created_at, cabinTemp: field1, humidity: field2, pulse: field3, babyTemp: field4, weight: field5)
            return sensor
            
        }
        catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
        
    }
    
}
