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

