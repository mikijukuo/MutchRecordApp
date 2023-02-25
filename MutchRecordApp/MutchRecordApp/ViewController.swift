//
//  ViewController.swift
//  MutchRecordApp
//
//  Created by やまもとりく on 2023/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toRecordViewButton: UIButton!
    @IBOutlet weak var toShowRecordView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "ホーム"
        toRecordViewButton.setTitle("記録する", for: UIControl.State.normal)
        toShowRecordView.setTitle("記録を見る", for: UIControl.State.normal)

    }

    @IBAction func toRecordViewAction(_ sender: Any) {
       // self.performSegue(withIdentifier: "toRecordViewController", sender: self)
        
    }
    
    @IBAction func toShowRecordViewAction(_ sender: Any) {
       // self.performSegue(withIdentifier: "toShowRecordView", sender: self)
    }
    
    private func setupButton()
    {
        toRecordViewButton.setTitle("試合結果を記録する", for: .normal)
    }
}

