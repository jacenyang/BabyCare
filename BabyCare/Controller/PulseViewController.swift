//
//  PulseViewController.swift
//  BabyCare
//
//  Created by Jason Yang on 29/11/20.
//

import UIKit
import Charts

class PulseViewController: UIViewController {

    var dataAPI = [Feeds]()
    
    @IBOutlet weak var historyTableView: UITableView!
    @IBOutlet weak var chartView: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Detak Jantung"
        
        historyTableView.delegate = self
        historyTableView.dataSource = self
        
        fetchAPIthinkSpeak {
            DispatchQueue.main.async {
                self.historyTableView.reloadData()
                self.setChartValues()
            }
        }
    }
    
    func setChartValues(_ count : Int = 20) {
        let values = (0..<count).map { (i) -> ChartDataEntry in
            let val = Double(arc4random_uniform(UInt32(count)) + 3)
            return ChartDataEntry(x: Double(i), y: val)
        }
        var arr : [ChartDataEntry] = []
        var i = 0
        for da in dataAPI{
            let d = Double("\(da.field3)")
            arr.append(ChartDataEntry(x: Double(i), y: d ?? 0.0))
            i+=1
        }
        print(arr)
        let set1 = LineChartDataSet(entries: arr, label: "Detak Jantung")

        set1.axisDependency = .left
        set1.setColor(UIColor(red: 56/255, green: 87/255, blue: 81/255, alpha: 1))
        set1.setCircleColor(UIColor(red: 56/255, green: 87/255, blue: 81/255, alpha: 1))
        set1.lineWidth = 2
        set1.circleRadius = 3
        set1.fillAlpha = 65/255
        set1.fillColor = UIColor(red: 56/255, green: 87/255, blue: 81/255, alpha: 1)
        set1.highlightColor = UIColor(red: 56/255, green: 87/255, blue: 81/255, alpha: 1)
        set1.drawCircleHoleEnabled = false

        let data = LineChartData(dataSet: set1)

        self.chartView.data = data
    }
    
    func fetchAPIthinkSpeak(onSuccess : @escaping () -> Void) {
        
        guard let apiURL = URL(string: "https://api.thingspeak.com/channels/592779/feeds.json") else { return }
        URLSession.shared.dataTask(with: apiURL) {(data, response, error) in
            
            guard let data = data else {return}
            
            do {
                let decoder = JSONDecoder()
                let thinkSpeakData = try decoder.decode(SensorData.self, from: data)
                self.dataAPI = thinkSpeakData.feeds
                DispatchQueue.main.async {
                    onSuccess()
                }
            } catch let err {
                print("error", err)
            }
            
        }.resume()
        
    }
    
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension PulseViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataAPI.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PulseTableViewCell
        
        let pulseString = String(dataAPI.reversed()[indexPath.row].field3) + " BPM"
        cell.numberLabel.text = pulseString
        
        let date = dataAPI.reversed()[indexPath.row].created_at
        let splits = date.components(separatedBy: "T")
        //cell.tanggalLabel.text = dataAPI[indexPath.row].created_at
        cell.dateLabel.text = splits[0]
        
        return cell
    }
    
}
