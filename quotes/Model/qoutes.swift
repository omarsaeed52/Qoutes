//
//  qoutes.swift
//  quotes
//
//  Created by omar ahmed on 26/04/2021.
//

import Foundation

class QuotesModel : Identifiable , Decodable  {
    
    var id : UUID?
    var name : String
    var image : String
    var quotes : [String]
    
}
