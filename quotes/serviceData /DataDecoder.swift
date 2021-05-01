//
//  DataDecoder.swift
//  quotes
//
//  Created by omar ahmed on 26/04/2021.
//

import Foundation

class  LocalData {
    
   static func decod() -> [QuotesModel] {
        
        
        //path
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [QuotesModel]()
        }
        
        // create url
        let url = URL(fileURLWithPath: pathString! )
        
        do {
        let data = try Data(contentsOf: url)
        
        let decoder = JSONDecoder()
            
            do {
            
            let qoutesData = try decoder.decode([QuotesModel].self, from: data)
                
                for r in qoutesData {
                    r.id = UUID()
                }
                return qoutesData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return [QuotesModel]() 
    }
    
}
