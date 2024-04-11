//
//  ViewController.swift
//  tip-Calci
//
//  Created by Ashish Jain on 02/04/24.
//

import UIKit
import SnapKit

class CalculatorVC: UIViewController {

    private let logoView = LogoView()
    private let resultView = ResultView()
    private let billinputView = BillInputView()
    private let tipInputView = TipInputView()
    private let splitInputView = SplitInputView()
    
    
    private lazy var vStackView:UIStackView = {
        
        let stackView = UIStackView(arrangedSubviews: [
            logoView,
            resultView,
            billinputView,
            tipInputView,
            splitInputView
        ])
        stackView.axis = .vertical
        stackView.spacing = 36
        
        return stackView
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        layout()
    }
    
    private func layout(){
        
        view.addSubview(vStackView)
        
        vStackView.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leadingMargin).offset(16)
            make.trailing.equalTo(view.snp.trailingMargin).offset(-16)
            make.bottom.equalTo(view.snp.bottomMargin).offset(-16)
            make.top.equalTo(view.snp.topMargin).offset(16 )
        }
        
        logoView.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
        
        resultView.snp.makeConstraints { make in
            make.height.equalTo(224 )
        }
        
        billinputView.snp.makeConstraints { make in
            make.height.equalTo(56+56+16)
        }
        
        tipInputView.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
        
        splitInputView.snp.makeConstraints { make in
            make.height.equalTo(56)
        }
        
    }
    

}

