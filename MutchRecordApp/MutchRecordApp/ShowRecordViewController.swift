//
//  ShowRecordViewController.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/02/25.
//

import Foundation
import UIKit
import Charts
class ShowRecordViewController: UIViewController {

    enum stageType{
        case yunohana
        case gonzui
        case mategai
        case yagara
        case namerou
        case amabi
        case hirame
    }
    
    @IBOutlet weak var pieChartsView: PieChartView!
    @IBOutlet weak var pieChartsGonzui: PieChartView!
    @IBOutlet weak var pieChartsMategai: PieChartView!
    @IBOutlet weak var pieChartsYagara: PieChartView!
    @IBOutlet weak var pieChartsNamerou: PieChartView!
    @IBOutlet weak var pieChartsAmabi: PieChartView!
    @IBOutlet weak var pieChartsHirame: PieChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "記録を見る"
        
        crearePieCharts(stage: .yunohana)
        crearePieCharts(stage: .gonzui)
        crearePieCharts(stage: .mategai)
        crearePieCharts(stage: .yagara)
        crearePieCharts(stage: .namerou)
        crearePieCharts(stage: .amabi)
        crearePieCharts(stage: .hirame)
    }
    
    func crearePieCharts(stage:stageType){
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        formatter.maximumFractionDigits = 2
        formatter.multiplier = 1.0
        
        switch stage{
        case .yunohana:
            self.pieChartsView.centerText = "ユノハナ大渓谷"
            let dataEntries = [
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.yunohanaWinCount), label: "WIN"),
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.yunohanaLoseCount), label: "LOSE"),
            ]
            
            let dataSet = PieChartDataSet(entries: dataEntries, label: "WIN:\(PlayerWeaponSingleton.shared.yunohanaWinCount) LOSE\(PlayerWeaponSingleton.shared.yunohanaLoseCount)")

            dataSet.colors = ChartColorTemplates.vordiplom()
            dataSet.valueTextColor = UIColor.black
            dataSet.entryLabelColor = UIColor.black

            self.pieChartsView.data = PieChartData(dataSet: dataSet)
            
            self.pieChartsView.data?.setValueFormatter(DefaultValueFormatter(formatter: formatter))
            self.pieChartsView.usePercentValuesEnabled = true
        case .gonzui:
            self.pieChartsGonzui.centerText = "ゴンズイ地区"
            let dataEntries = [
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.gonnzuiWinCount), label: "WIN"),
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.gonnzuiLoseCount), label: "LOSE"),
            ]
            
            let dataSet = PieChartDataSet(entries: dataEntries, label: "WIN:\(PlayerWeaponSingleton.shared.gonnzuiWinCount) LOSE\(PlayerWeaponSingleton.shared.gonnzuiLoseCount)")

            dataSet.colors = ChartColorTemplates.vordiplom()
            dataSet.valueTextColor = UIColor.black
            dataSet.entryLabelColor = UIColor.black

            self.pieChartsGonzui.data = PieChartData(dataSet: dataSet)
            
            self.pieChartsGonzui.data?.setValueFormatter(DefaultValueFormatter(formatter: formatter))
            self.pieChartsGonzui.usePercentValuesEnabled = true
        case .mategai:
            self.pieChartsMategai.centerText = "マテガイ放水路"
            let dataEntries = [
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.mategaiWinCount), label: "WIN"),
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.mategaiLoseCount), label: "LOSE"),
            ]
            
            let dataSet = PieChartDataSet(entries: dataEntries, label: "WIN:\(PlayerWeaponSingleton.shared.mategaiWinCount) LOSE\(PlayerWeaponSingleton.shared.mategaiLoseCount)")

            dataSet.colors = ChartColorTemplates.vordiplom()
            dataSet.valueTextColor = UIColor.black
            dataSet.entryLabelColor = UIColor.black

            self.pieChartsMategai.data = PieChartData(dataSet: dataSet)
            
            self.pieChartsMategai.data?.setValueFormatter(DefaultValueFormatter(formatter: formatter))
            self.pieChartsMategai.usePercentValuesEnabled = true
            
        case .yagara:
            self.pieChartsYagara.centerText = "ヤガラ市場"
            let dataEntries = [
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.yagaraWinCount), label: "WIN"),
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.yagaraLoseCount), label: "LOSE"),
            ]
            
            let dataSet = PieChartDataSet(entries: dataEntries, label: "WIN:\(PlayerWeaponSingleton.shared.yagaraWinCount) LOSE\(PlayerWeaponSingleton.shared.yagaraLoseCount)")

            dataSet.colors = ChartColorTemplates.vordiplom()
            dataSet.valueTextColor = UIColor.black
            dataSet.entryLabelColor = UIColor.black

            self.pieChartsYagara.data = PieChartData(dataSet: dataSet)
            
            self.pieChartsYagara.data?.setValueFormatter(DefaultValueFormatter(formatter: formatter))
            self.pieChartsYagara.usePercentValuesEnabled = true
            
        case .namerou:
            self.pieChartsNamerou.centerText = "ナメロウ金属"
            let dataEntries = [
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.namerouWinCount), label: "WIN"),
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.namerouLoseCount), label: "LOSE"),
            ]
            
            let dataSet = PieChartDataSet(entries: dataEntries, label: "WIN:\(PlayerWeaponSingleton.shared.namerouWinCount) LOSE\(PlayerWeaponSingleton.shared.namerouLoseCount)")

            dataSet.colors = ChartColorTemplates.vordiplom()
            dataSet.valueTextColor = UIColor.black
            dataSet.entryLabelColor = UIColor.black

            self.pieChartsNamerou.data = PieChartData(dataSet: dataSet)
            
            self.pieChartsNamerou.data?.setValueFormatter(DefaultValueFormatter(formatter: formatter))
            self.pieChartsNamerou.usePercentValuesEnabled = true
            
        case .amabi:
            self.pieChartsAmabi.centerText = "アマ美術大学"
            let dataEntries = [
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.amabiWinCount), label: "WIN"),
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.amabiLoseCount), label: "LOSE"),
            ]
            
            let dataSet = PieChartDataSet(entries: dataEntries, label: "WIN:\(PlayerWeaponSingleton.shared.amabiWinCount) LOSE\(PlayerWeaponSingleton.shared.amabiLoseCount)")

            dataSet.colors = ChartColorTemplates.vordiplom()
            dataSet.valueTextColor = UIColor.black
            dataSet.entryLabelColor = UIColor.black

            self.pieChartsAmabi.data = PieChartData(dataSet: dataSet)
            
            self.pieChartsAmabi.data?.setValueFormatter(DefaultValueFormatter(formatter: formatter))
            self.pieChartsAmabi.usePercentValuesEnabled = true
            
        case .hirame:
            self.pieChartsHirame.centerText = "ヒラメヶ丘団地"
            let dataEntries = [
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.hirameWinCount), label: "WIN"),
                PieChartDataEntry(value: Double(PlayerWeaponSingleton.shared.hirameLoseCount), label: "LOSE"),
            ]
            
            let dataSet = PieChartDataSet(entries: dataEntries, label: "WIN:\(PlayerWeaponSingleton.shared.hirameWinCount) LOSE\(PlayerWeaponSingleton.shared.hirameLoseCount)")

            dataSet.colors = ChartColorTemplates.vordiplom()
            dataSet.valueTextColor = UIColor.black
            dataSet.entryLabelColor = UIColor.black

            self.pieChartsHirame.data = PieChartData(dataSet: dataSet)
            
            self.pieChartsHirame.data?.setValueFormatter(DefaultValueFormatter(formatter: formatter))
            self.pieChartsHirame.usePercentValuesEnabled = true
        }
    }
}

