//
//  CardView.swift
//  quotes
//
//  Created by omar ahmed on 26/04/2021.
//

import SwiftUI

struct CardView: View {
    
    var qo1 : QuotesModel
    
    var body: some View {
       
        
            
            ZStack {
                Image(qo1.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(50)
                    .opacity(/*@START_MENU_TOKEN@*/1.8/*@END_MENU_TOKEN@*/)
                    .clipped()
                
                VStack {
                    
                    Text( "' " + qo1.quotes[0] + " '")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .bold()
                        .padding(.top, 300.0)
                        .opacity(/*@START_MENU_TOKEN@*/7.8/*@END_MENU_TOKEN@*/)
                    Spacer()
                    HStack {
                        Text("- "+qo1.name)
                            .font(.title)
                            .foregroundColor(Color.white)
                            .lineLimit(4)
                            .padding(.bottom, 300.0)
                        Spacer()

                    }
                    Spacer()
                }
                
            }
            
        
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = qoutesView()
        
        CardView(qo1: model.qo[0])
    }
}
