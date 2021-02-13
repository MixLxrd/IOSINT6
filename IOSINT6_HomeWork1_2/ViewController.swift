//
//  ViewController.swift
//  IOSINT6_HomeWork1_2
//
//  Created by Михаил Ильченко on 23.01.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = true
        view.backgroundColor = .black
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapOnView))
        view.addGestureRecognizer(tap)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }


}

extension ViewController {
    
    private func setupUI() {
        view.addSubview(mainView)
        mainView.snp.makeConstraints{ (make) -> Void in
            make.width.height.equalTo(50)
            make.center.equalTo(self.view)
        }
        
    }
    
    @objc private func tapOnView() {
        let alert = UIAlertController(title: "WHY U TAP ON ME?", message: "Faster close ME", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

