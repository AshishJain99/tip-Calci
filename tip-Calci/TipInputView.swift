//
//  TipInputView.swift
//  tip-Calci
//
//  Created by Ashish Jain on 11/04/24.
//

import UIKit

class TipInputView:UIView{
    
    
    init(){
        super.init(frame: .zero)
        
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout(){
        backgroundColor = .systemPink
    }
}
