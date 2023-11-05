//
//  DrugDetailView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 20/04/1445 AH.
//

import SwiftUI

struct DrugDetailView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.backward")
                    .padding(.trailing, 80)
                Text("Drugs Detail").bold() .padding(.trailing, 70)
                Image(systemName: "cart").padding(.leading, 60)}
            Image("iimg").resizable().scaledToFit()
                .frame(width: 250)
            Text("OBH Combi").bold().font(.title2) .padding(.trailing,230)
            Text("75ml") .padding(.trailing,300)
            HStack{
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Text("4,0")
            }.foregroundColor(.gr1)
                .padding(.trailing,200)
            HStack{
                Text("⎯").foregroundColor(.gray)
                Text("1").font(.title).bold()
                Image(systemName: "plus.app.fill").resizable().scaledToFit().frame(width: 30, height: 30)
                    .foregroundColor(.gr1)
                Spacer()
                Text("$9.99").font(.title).bold()
            }.padding()
            Text("Description").font(.title3).bold().padding(.trailing, 240)
            Text("OBH COMBI  is a cough medicine containing, Paracetamol, Ephedrine HCl, and Chlorphenamine maleate which is used to relieve coughs accompanied by flu symptoms such as fever, headache, and sneezing...").font(.callout).foregroundColor(.gray) + Text("Read more").foregroundColor(.gr1)
            Spacer()
            HStack{
                Image(systemName: "cart")
                    .frame(width: 70, height: 50)
                    .foregroundColor(.gr1).background(Color.gr2)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Buy Now")
                        .font(.callout).bold()
                        .foregroundColor(.white)
                    
                        .frame(width: 250, height: 50)
                        .background(Color.gr1)
                        .cornerRadius(20)
                    
                })
            }
                
        }.padding()
    }
}
#Preview {
    DrugDetailView()
}
