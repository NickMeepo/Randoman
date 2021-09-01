//
//  ViewController.swift
//  Statistics
//
//  Created by NickMeepo on 2021/3/24.
//

import UIKit
import Randoman
import Charts

class ViewController: UIViewController {
    enum Distribution: String, CaseIterable {
        case Custom
        case Geometric
        case Bernoulli
        case Poisson
        case Binomial
        case Exponential
        case Normal
    }
    
    var distribution: Distribution = .Geometric
    
    @IBOutlet
    weak var chartView: BarChartView!
    
    let sampleRounds = 10000
        
    @objc
    func refresh() {
        switch distribution {
        case .Custom:
            showCustom()
        case .Geometric:
            showGeometric()
        case .Bernoulli:
            showBernoulli()
        case .Poisson:
            showPoisson()
        case .Binomial:
            showBinomial()
        case .Exponential:
            showExponential()
        case .Normal:
            showNormal()
        }
    }

    func showBinomial() {
        let success: Double = 0.5
        let total = 20
        let test = Random.sample.binomial(total: total, successProp: success)
        var dict: [Int: Int] = [:]
        for round in test.batch(count: sampleRounds) {
            if let count = dict[round] {
                dict[round] = count + 1
            } else {
                dict[round] = 1
            }
        }
        
        var dataSet = [BarChartDataEntry]()
        for (idx, count) in dict {
            let dataEntry = BarChartDataEntry(x: Double(idx), y: Double(count) / Double(sampleRounds))
            dataSet.append(dataEntry)
        }
        let set = BarChartDataSet(entries: dataSet, label: "Binomial distribution with success \(success) in \(total) rounds, \(sampleRounds) trials")
        let data = BarChartData(dataSet: set)
        
        chartView.xAxis.axisMinimum = 0
        chartView.xAxis.axisMaximum = 20
        chartView.data = data
    }
    
    func showPoisson() {
        let lamda: Double = 12
        let test = Random.sample.poisson(lamda: lamda)
        var dict: [Int: Int] = [:]
        for round in test.batch(count: sampleRounds) {
            if let count = dict[round] {
                dict[round] = count + 1
            } else {
                dict[round] = 1
            }
        }
        
        var dataSet = [BarChartDataEntry]()
        for (idx, count) in dict {
            let dataEntry = BarChartDataEntry(x: Double(idx), y: Double(count) / Double(sampleRounds))
            dataSet.append(dataEntry)
        }
        let set = BarChartDataSet(entries: dataSet, label: "Poisson distribution with lamda \(lamda), \(sampleRounds) trials")
        let data = BarChartData(dataSet: set)
        
        chartView.xAxis.axisMinimum = 0
        chartView.xAxis.axisMaximum = 30
        chartView.data = data
    }
    
    func showBernoulli() {
        let success: Double = 0.25
        let test = Random.sample.bernoulli(successProp: success)
        var dict: [Bool: Int] = [:]
        for round in test.batch(count: sampleRounds) {
            if let count = dict[round] {
                dict[round] = count + 1
            } else {
                dict[round] = 1
            }
        }
        
        var dataSet = [BarChartDataEntry]()
        for (success, count) in dict {
            let dataEntry = BarChartDataEntry(x: success ? 1 : 2, y: Double(count) / Double(sampleRounds))
            dataSet.append(dataEntry)
        }
        let set = BarChartDataSet(entries: dataSet, label: "Bernoulli distribution with successProp \(success) of xValue 1, \(sampleRounds) trials")
        
        chartView.xAxis.axisMinimum = 0
        chartView.xAxis.axisMaximum = 3
        chartView.data = BarChartData(dataSet: set)
    }
    
    func showGeometric() {
        let success: Double = 0.25
        let test = Random.sample.geometric(successProp: success)
        var dict: [Int: Int] = [:]
        for round in test.batch(count: sampleRounds) {
            if let count = dict[round] {
                dict[round] = count + 1
            } else {
                dict[round] = 1
            }
        }
        
        var dataSet = [BarChartDataEntry]()
        for (idx, count) in dict {
            let dataEntry = BarChartDataEntry(x: Double(idx), y: Double(count) / Double(sampleRounds))
            dataSet.append(dataEntry)
        }
        let set = BarChartDataSet(entries: dataSet, label: "Geometric distribution with successProp \(success), \(sampleRounds) trials")
        
        chartView.xAxis.axisMinimum = 0
        chartView.xAxis.axisMaximum = 50
        chartView.data = BarChartData(dataSet: set)
    }
    
    func showExponential() {
        let lamda: Double = 12
        let rounds = 1000
        let test = Random.sample.exponential(lamda: lamda)
        var dict: [Int: Double] = [:]
        var index = 0
        var sum: Double = 0
        for round in test.batch(count: rounds) {
            dict[index] = round
            index += 1
            sum += round
        }
        var dataSet = [BarChartDataEntry]()
        for (idx, value) in dict {
            let dataEntry = BarChartDataEntry(x: Double(idx), y: value)
            dataSet.append(dataEntry)
        }
        let avgStr = String(format: "%.3f", sum / Double(rounds))
        let avgStr2 = String(format: "%.3f", test.average)
        let set = BarChartDataSet(entries: dataSet, label: "Exponential distribution with lamda \(lamda), \(rounds) trials. avg \(avgStr) → \(avgStr2)")
        
        chartView.xAxis.axisMinimum = 0
        chartView.xAxis.axisMaximum = Double(rounds)
        chartView.data = BarChartData(dataSet: set)
    }
    
    func showNormal() {
        let rounds = 1000
        let test = Random.sample.normal(average: 0, variance: 1)
        var dict: [Int: Double] = [:]
        var index = 0
        var sum: Double = 0
        for round in test.batch(count: rounds) {
            dict[index] = round
            index += 1
            sum += round
        }
        var dataSet = [BarChartDataEntry]()
        for (idx, value) in dict {
            let dataEntry = BarChartDataEntry(x: Double(idx), y: value)
            dataSet.append(dataEntry)
        }
        let set = BarChartDataSet(entries: dataSet, label: "Normal distribution with avg \(0), var \(1) and \(rounds) trials.")
        chartView.xAxis.axisMinimum = 0
        chartView.xAxis.axisMaximum = Double(rounds)
        chartView.data = BarChartData(dataSet: set)
        
    }
    
    func showCustom() {
        let elements = [0, 1, 2, 3]
        let props: [Double] = [0.3, 0.4, 0.1, 0.2]
        let test = Random.sample.value(from: elements, props: props)
        let batches = test.batch(count: sampleRounds)
        var counts = [0, 0, 0, 0]
        for element in batches {
            switch element {
            case elements[0]:
                counts[0] += 1
            case elements[1]:
                counts[1] += 1
            case elements[2]:
                counts[2] += 1
            case elements[3]:
                counts[3] += 1
            default:
                break
            }
        }
        let sampledProps: [Double] = counts.map {
            Double($0) / Double(sampleRounds)
        }
        var dataSet = [BarChartDataEntry]()
        for (idx, prop) in sampledProps.enumerated() {
            let dataEntry = BarChartDataEntry(x: Double(elements[idx]), y: prop)
            dataSet.append(dataEntry)
        }
        let set = BarChartDataSet(entries: dataSet, label: "Custom distribution with props: \(props), \(sampleRounds) trials")
        
        chartView.xAxis.axisMinimum = -1
        chartView.xAxis.axisMaximum = 4
        chartView.data = BarChartData(dataSet: set)
    }
    
    @objc
    func selectAction() {
        let alert = UIAlertController(title: "Which Distribution", message: nil, preferredStyle: .actionSheet)
        for this in Distribution.allCases {
            let action = UIAlertAction(title: this.rawValue, style: .default) { [unowned self] _ in
                self.distribution = this
                self.refresh()
            }
            alert.addAction(action)
        }
        alert.addAction(.init(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("PI: \(Random.Constant.pi)")
        print("EU: \(Random.Constant.e)")
        self.title = "Sampling"
        self.navigationItem.rightBarButtonItem = .init(title: "Refresh", style: .plain, target: self, action: #selector(refresh))
        self.navigationItem.leftBarButtonItem = .init(title: "Distribution", style: .plain, target: self, action: #selector(selectAction))
        
        
        chartView.leftAxis.axisMinimum = 0
        chartView.leftAxis.axisMaximum = 1
        chartView.rightAxis.axisMinimum = 0
        chartView.rightAxis.axisMaximum = 1
        chartView.highlightPerTapEnabled = false
        refresh()
    }

}
