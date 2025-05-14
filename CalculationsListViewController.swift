//
//  CalculationsListViewController.swift
//  TCalculator
//
//  Created by Satoru on 20.04.2025.
//

import UIKit

class CalculationsListViewController : UIViewController {
    
    var result: String?
    
    @IBOutlet weak var calculationLabel: UILabel!
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        initialize()
    }
    
    required init?(coder:NSCoder) {
        super.init(coder: coder)
        initialize()
    }
    
    private func initialize() {
        modalPresentationStyle = .fullScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculationLabel.text = result
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @IBAction func dismissVC(_ sender: Any) {
//        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
    }
}
