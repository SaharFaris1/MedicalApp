//
//  MassegeView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 19/04/1445 AH.
//

import SwiftUI

struct MassegeView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Message").bold().font(.title)
                Spacer()
                Image(systemName: "magnifyingglass")
            }
            HStack{
                Image("ImgDr").resizable().scaledToFit().frame(width: 60, height: 70)
                .clipShape(Circle())
                VStack{
                    Text("Dr. Marcus Horizon").font(.headline)
                        .padding(.trailing)
                    Text("I don,t have any fever, but headchace...").font(.caption)
                        .foregroundColor(.gray)
                }
                VStack{
                    Text("10: 24")
                    Image(systemName: "1.circle.fill").foregroundColor(.gr1)
                } .padding(.leading)
                .padding(.horizontal)
         
            }
            HStack{
                Image("ImgDr").resizable().scaledToFit().frame(width: 60, height: 70)
                .clipShape(Circle())
                VStack{
                    Text("Dr. Alysa Hana").font(.headline)
                        .padding(.trailing)
                    Text("Hello, How can i help you?").font(.caption)
                        .foregroundColor(.gray)
                }
                VStack{
                    Text("09: 04")
                    Image(systemName: "checkmark").foregroundColor(.gray).offset(x: 3, y: 20)
                    Image(systemName: "checkmark").foregroundColor(.gray)
                } .padding(.leading, 60)
                .padding(.horizontal)
         
            }
            HStack{
                Image("ImgDr").resizable().scaledToFit().frame(width: 60, height: 70)
                .clipShape(Circle())
                VStack{
                    Text("Dr. Maria Elena").font(.headline)
                        .padding(.trailing,20)
                    Text("Hello, How can i help you?").font(.caption)
                        .foregroundColor(.gray)
                }
                VStack{
                    Text("08: 04")
                    Image(systemName: "checkmark").foregroundColor(.gray).offset(x: 3, y: 20)
                    Image(systemName: "checkmark").foregroundColor(.gray)
                } .padding(.leading, 85)
                .padding(.horizontal)
         
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "ellipsis.message.fill")
                
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.gr1)
                    .clipShape(Circle())
                    .padding(.top, 300)
                    .padding(.leading, 300)
            })
            }
        }}


#Preview {
    MassegeView()
}
