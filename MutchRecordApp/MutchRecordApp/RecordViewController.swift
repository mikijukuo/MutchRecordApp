//
//  RecordView.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/02/25.
//

import Foundation
import UIKit
class RecordViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var BackButton: UINavigationItem!
    @IBOutlet weak var ContinueButton: UIButton!
    @IBOutlet weak var FinishButton: UIBarButtonItem!
    @IBOutlet weak var stageSelectField: UITextField!
    
    @IBOutlet weak var playerWeapon1: UITextField!
    @IBOutlet weak var playerWeapon2: UITextField!
    @IBOutlet weak var playerWeapon3: UITextField!
    @IBOutlet weak var playerWeapon4: UITextField!
    
    var stageSelectPickerView: UIPickerView?
    
    
    let stageList = ["ユノハナ大渓谷",
                     "ゴンズイ地区",
                     "ヤガラ市場",
                     "マテガイ放水路",
                     "ナメロウ金属"]
    
    let weaponList = ["シャープマーカー",
                      "ジムワイパー"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "記録をする"
        ContinueButton.setTitle("次の試合を記録する", for: UIControl.State.normal)

        
        createPicker()
        
    }
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag{
        case 0:
            return stageList.count
        case 1,2,3,4:
            return weaponList.count
        default:
            return 0
        }
        
        
    }
    
    //表示内容
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag{
        case 0:
            return stageList[row]
        case 1,2,3,4:
            return weaponList[row]
        default:
            return "error"
        }
        
    }
    
    //選択時の処理
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag{
        case 0:
            stageSelectField.text = stageList[row]
        case 1:
            playerWeapon1.text = weaponList[row]
            PlayerWeaponSingleton.shared.playerWeapon1 = stageList[row]
        case 2:
            playerWeapon2.text = weaponList[row]
            PlayerWeaponSingleton.shared.playerWeapon2 = stageList[row]
        case 3:
            playerWeapon3.text = weaponList[row]
            PlayerWeaponSingleton.shared.playerWeapon3 = stageList[row]
        case 4:
            playerWeapon4.text = weaponList[row]
            PlayerWeaponSingleton.shared.playerWeapon4 = stageList[row]
        default:
            break
        }
    }
    @IBAction func winButtonAction(_ sender: Any) {
        //TODO
    }
    
    @IBAction func loseButtonAction(_ sender: Any) {
        //TODO
    }
    
    
    @IBAction func endRecordButtonAction(_ sender: Any) {
        let alert = UIAlertController(title: "記録の終了", message: "記録を終了してもよろしいですか？", preferredStyle: .alert)
        
        let delete = UIAlertAction(title: "終了", style: .default, handler: { (action) -> Void in
            print("Delete button tapped")
            self.navigationController?.popViewController(animated: true)
        })
        
        let cancel = UIAlertAction(title: "キャンセル", style: .cancel, handler: { (action) -> Void in
            print("Cancel button tapped")
        })
        
        alert.addAction(delete)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func ContinueButton(_ sender: Any) {
        
        
    }
    
    private func createPicker(){
        let stageSelectPicker = UIPickerView()
        let playerWeaponSelectPicker1 = UIPickerView()
        let playerWeaponSelectPicker2 = UIPickerView()
        let playerWeaponSelectPicker3 = UIPickerView()
        let playerWeaponSelectPicker4 = UIPickerView()
        
        stageSelectPicker.delegate = self
        stageSelectPicker.dataSource = self
        playerWeaponSelectPicker1.delegate = self
        playerWeaponSelectPicker1.dataSource = self
        playerWeaponSelectPicker2.delegate = self
        playerWeaponSelectPicker2.dataSource = self
        playerWeaponSelectPicker3.delegate = self
        playerWeaponSelectPicker3.dataSource = self
        playerWeaponSelectPicker4.delegate = self
        playerWeaponSelectPicker1.dataSource = self
        stageSelectPicker.tag = 0
        playerWeaponSelectPicker1.tag = 1
        playerWeaponSelectPicker2.tag = 2
        playerWeaponSelectPicker3.tag = 3
        playerWeaponSelectPicker4.tag = 4
        
        stageSelectField.inputView = stageSelectPicker
        playerWeapon1.inputView = playerWeaponSelectPicker1
        playerWeapon2.inputView = playerWeaponSelectPicker2
        playerWeapon3.inputView = playerWeaponSelectPicker3
        playerWeapon4.inputView = playerWeaponSelectPicker4
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: #selector(RecordViewController.donePicker))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(RecordViewController.cancelPicker))
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        
        stageSelectField.inputAccessoryView = toolBar
        playerWeapon1.inputAccessoryView = toolBar
        playerWeapon2.inputAccessoryView = toolBar
        playerWeapon3.inputAccessoryView = toolBar
        playerWeapon4.inputAccessoryView = toolBar
        
    }
    
    @objc func donePicker() {
        
        view.endEditing(true)
        
    }
    @objc func cancelPicker(){
        
        view.endEditing(true)
    }
    
    
}
