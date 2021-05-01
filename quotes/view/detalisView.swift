//
//  detalisView.swift
//  quotes
//
//  Created by omar ahmed on 26/04/2021.
//

import SwiftUI

struct detalisView: View {
    
    var qo2 : QuotesModel
    
    var body: some View {
        
        TabView {
            ZStack {
                Image("pexels-sunsetoned-7235085 copy 2")
                    .ignoresSafeArea()
            
                    VStack {
                        
                        Text(qo2.name)
                            .font(.largeTitle)
                            .padding([.bottom , .top ],5)
                        
                    ForEach(qo2.quotes,id:\.self){ r in
                           
                            Text("' " + r + "'")
                                
                            
                        
                        }
                    .padding([.leading, .bottom, .trailing])
                }
            
            }.tabItem {
                VStack {
                    Image(systemName: "list.dash")
                    Text("quotes")
                }
               
               
                    
            }
            
            ZStack {
                Image("pexels-sunsetoned-7235085 copy 2")
                    .ignoresSafeArea()
            }.tabItem {
                VStack{
                    Image(systemName: "list.dash")
                    Text("Bio")
                }
            }
                
            }
        }
        
        
        
    }


struct detalisView_Previews: PreviewProvider {
    static var previews: some View {
        
        let  model2 = qoutesView()
        
        detalisView(qo2: model2.qo[0] )
    }
}
