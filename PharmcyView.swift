//
//  PharmcyView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 20/04/1445 AH.
//

import SwiftUI

struct PharmcyView: View {
    @State private var name: String = ""
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.backward")
                    .padding(.trailing, 80)
                Text("Pharmcy").bold() .padding(.trailing, 70)
                Image(systemName: "cart").padding(.leading, 60)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                    .frame(width: 350, height: 50)
                HStack {
                    Image(systemName: "magnifyingglass").padding()
                    TextField("Search drugs, category ...", text: $name)
                }.padding()
            }
            ZStack{
                RoundedRectangle(cornerRadius: 10).fill(.gr2)
                    .frame(width: 370, height: 130)
                HStack{
                    VStack{
                        Text("Order quickly with Prescription").bold().font(.headline)
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Upload Prescription")
                                .font(.callout).bold()
                                .foregroundColor(.white)
                            
                                .frame(width: 190, height: 40)
                                .background(Color.gr1)
                                .cornerRadius(10)
                            
                        })
                        
                    }
                    Image("imgcv7").padding(.leading, -20)
                }
            }
            
            HStack{
                Text("Popular Product").bold().padding()
                Spacer()
                Button {
                } label: {
                    Text("See all").foregroundColor(.gr1)
                }}
            ScrollView(.horizontal){
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                            .frame(width: 150, height: 200)
                        VStack{
                            Image("iimg2").resizable().scaledToFit().frame(width: 100,height: 100)
                            Text("Panadol").font(.headline)
                            Text("20pcs").font(.caption).foregroundColor(.gray)
                            HStack(spacing: 30){
                                Text("$15.99").bold()
                                
                                Image(systemName: "plus.app.fill").foregroundColor(.gr1)
                            }}}
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                            .frame(width: 150, height: 200)
                        VStack{
                            Image("iimg").resizable().scaledToFit().frame(width: 100,height: 100)
                            Text("Bodrex Harbel").font(.headline)
                            Text("100ml").font(.caption).foregroundColor(.gray)
                            HStack(spacing: 30){
                                Text("$7.99").bold()
                                
                                Image(systemName: "plus.app.fill").foregroundColor(.gr1)
                            }}}
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                            .frame(width: 150, height: 200)
                        VStack{
                            Image("iimg4").resizable().scaledToFit().frame(width: 100,height: 100)
                            Text("Konidin").font(.headline)
                            Text("3pcs").font(.caption).foregroundColor(.gray)
                            HStack(spacing: 30){
                                Text("$5.99").bold()
                                
                                Image(systemName: "plus.app.fill").foregroundColor(.gr1)
                            }}}}}
            HStack{
                Text("Popular on Sale").bold()
                Spacer()
                Button {
                } label: {
                    Text("See all").foregroundColor(.gr1)
                }}.padding(.horizontal)
            ScrollView(.horizontal){
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                            .frame(width: 150, height: 200)
                        VStack{
                            Image("iimg3").resizable().scaledToFit().frame(width: 100,height: 100)
                            Text("OBH Combi").font(.headline)
                            Text("75ml").font(.caption).foregroundColor(.gray)
                            HStack{
                                Text("$9.99").bold()
                                ZStack{
                                    Text("$10.00").font(.caption2)
                                    Text("⎯")
                                }
                                Image(systemName: "plus.app.fill").foregroundColor(.gr1)
                                
                            }}}
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                            .frame(width: 150, height: 200)
                        VStack{
                            Image("iimg").resizable().scaledToFit().frame(width: 100,height: 100)
                            Text("Betadine").font(.headline)
                            Text("50ml").font(.caption).foregroundColor(.gray)
                            HStack{
                                Text("$6.99").bold()
                                ZStack{
                                    Text("$8.99").font(.caption2)
                                    Text("⎯")
                                }
                                Image(systemName: "plus.app.fill").foregroundColor(.gr1)
                            }}}
                            ZStack{
                                RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                                    .frame(width: 150, height: 200)
                                VStack{
                                    Image("iimg1").resizable().scaledToFit().frame(width: 100,height: 100)
                                    Text("Panadol").font(.headline)
                                    Text("20pcs").font(.caption).foregroundColor(.gray)
                                    HStack{
                                        Text("$7.99").bold()
                                        ZStack{
                                            Text("$8.99").font(.caption2)
                                            Text("⎯")
                                        }
                                        Image(systemName: "plus.app.fill").foregroundColor(.gr1)
                                    }}}
                }}
            .padding()
        }}}

#Preview {
    PharmcyView()
}
