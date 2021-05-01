//
//  ContentView.swift
//  quotes
//
//  Created by omar ahmed on 26/04/2021.
//

import SwiftUI

struct ContentView: View {
    
@ObservedObject var q = qoutesView()
    
    var body: some View {
        
        NavigationView {
            ZStack {
    Image("pexels-sunsetoned-7235085 copy 2")
        .ignoresSafeArea()
                
                
                    ScrollView{
                        ForEach( q.qo ){ r in
                   NavigationLink(
                    destination: detalisView(qo2: r) ,
                    label: {
                        
                        VStack {
                           
                                
                                    CardView(qo1: r )
                                
                            }
                        
                    })
                    
                    }
                    
                    }.navigationBarTitle("Quotes")
            }
        }
        
        
        
    
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
