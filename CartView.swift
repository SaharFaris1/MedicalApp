//
//  CartView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 20/04/1445 AH.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.backward")
                    .padding(.trailing, 110)
                Text("My Cart").bold() .padding(.trailing, 120)}
            ZStack{
                RoundedRectangle(cornerRadius: 15).stroke(Color.gr2, lineWidth: 2)
                    .frame(width: 350, height: 150)
                HStack{
                    Image("iimg").resizable().scaledToFit().frame(width: 100)
                    VStack{
                        Text("OBH Combi").bold()
                        Text("75ml").foregroundColor(.gray)
                        HStack{
                            Text("⎯").foregroundColor(.gray)
                            Text("1").font(.title3).bold()
                            Image(systemName: "plus.app.fill").resizable().scaledToFit().frame(width: 20, height: 30)
                                .foregroundColor(.gr1)
                        }}.padding()
                    VStack{
                        Image(systemName: "trash")
                            .padding(.bottom, 50)
                        Text("$9.99")
                    }
                }
            }.padding()
            ZStack{
                RoundedRectangle(cornerRadius: 15).stroke(Color.gr2, lineWidth: 2)
                    .frame(width: 350, height: 150)
                HStack{
                    Image("iimg3").resizable().scaledToFit().frame(width: 100)
                    VStack{
                        Text("Panadol").bold()
                        Text("20pcs").foregroundColor(.gray)
                        HStack{
                            Text("⎯").foregroundColor(.gray)
                            Text("2").font(.title3).bold()
                            Image(systemName: "plus.app.fill").resizable().scaledToFit().frame(width: 20, height: 30)
                                .foregroundColor(.gr1)
                        }}.padding()
                    VStack{
                        Image(systemName: "trash")
                            .padding(.bottom, 50)
                        Text("$15.99")
                    }
                }
            }.padding()
            Text("Payment Detail").font(.title3).bold()
                .padding(.trailing, 210)
                HStack{
                    Text("Subtotal")
                    Spacer()
                    Text("$25.98")
                }.foregroundColor(.gray)
             
            HStack{
                Text("Taxes")
                Spacer()
                Text("$1.00")
            }.foregroundColor(.gray)

            HStack{
                Text("Total")
                Spacer()
                Text("$26.98")
            }
            Divider().frame(width: 300)
            Text("Payment Method").font(.title3).bold()
                .padding(.trailing, 200)
            ZStack{
                RoundedRectangle(cornerRadius: 10).stroke(Color.gr2, lineWidth: 1).frame(width: 360, height: 50)
                HStack{
                    Text("Visa").font(.title2)
                        .bold().foregroundColor(.blu1)
                        .padding(.trailing, 120)
                    Text("Change").font(.callout).foregroundColor(.gray)
                }}
            HStack{
                VStack{
                    Text("Total").foregroundColor(.gray)
                    Text("$26.98") }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Checkout")
                        .font(.callout).bold()
                        .foregroundColor(.white)
                    
                        .frame(width: 200, height: 50)
                        .background(Color.gr1)
                        .cornerRadius(20)
                    
                })
            }.padding(.top, 60)
        }.padding()
    }}
#Preview {
    CartView()
}
