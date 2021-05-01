//
//  qoutes.Model.swift
//  quotes
//
//  Created by omar ahmed on 26/04/2021.
//

import Foundation

class qoutesView : ObservableObject {
    
   @Published var qo = [QuotesModel]()
    
    init() {
        
        self.qo = LocalData.decod()
        
    }
    
}
