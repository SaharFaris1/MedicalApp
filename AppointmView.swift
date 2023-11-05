//
//  AppointmView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 18/04/1445 AH.
//

import SwiftUI

struct AppointmView: View {
    var body: some View {
        VStack{
            
            HStack{
                Image(systemName: "chevron.backward")
                    .padding(.trailing, 100)
                Text("Appointment").bold().font(.title2)
                    .padding(.trailing, 100)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 20)                    .stroke(Color.gr2, lineWidth: 1)
                    .frame(width: 350, height: 150)
                HStack {
                    Image("ImgDr")
                        .resizable()
                        .frame(width: 100, height: 130)
                    
                    VStack{
                        Text("Dr.Marcus Horizon").bold().font(.headline)
                        Text("Chardiologisr").font(.subheadline).foregroundColor(.gray)
                        Divider() .frame(width: 150)
                     
                            ZStack {
                                Rectangle()
                                    .fill(Color.gr2)
                                    .frame(width: 60, height: 30)
                                
                                HStack {
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.gr1)
                                    Text("4.7").font(.caption)
                                }
                            }
                        HStack{
                            Image(systemName: "mappin").foregroundColor(.gray)
                            Text("800m away").foregroundColor(.gray)
                        } }}}.padding(.trailing)
            HStack{
                Text("Date").bold().font(.title2)
                Spacer()
                Text("Change").font(.callout).foregroundColor(.gray)}.padding()
            HStack{
                Image(systemName: "calendar.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 35).foregroundColor(.gr1).background(.gr2).clipShape(Circle())
                Text("Wednesday, Jun23,2022 | 10:00 AM").bold()
            }
            Divider().frame(width: 350)
            HStack{
                Text("Reason").bold().font(.title2)
                Spacer()
                Text("Change").font(.callout).foregroundColor(.gray)}.padding()
            HStack{
                Image(systemName: "square.and.pencil.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 35).foregroundColor(.gr1).clipShape(Circle())
                Text("Chest pain").bold()
            }.padding(.trailing, 200)
            Divider().frame(width: 350)
            Text("Payment").bold().font(.title2)
            HStack{
                Text("Consultatio").foregroundColor(.gray)
                Spacer()
                Text("$60.00")
            }
            HStack{
                Text("Admin Free").foregroundColor(.gray)
                Spacer()
                Text("$01.00")
            }
            HStack{
                Text("Additional Discount").foregroundColor(.gray)
                Spacer()
                Text("-")
            }
            HStack{
                Text("Total").bold()
                Spacer()
                Text("$61.00").bold().foregroundColor(.gr1)
            }
            Divider().frame(width: 350)
            
            Text("Payment Method").bold().font(.title2)
            ZStack{
                RoundedRectangle(cornerRadius: 10).stroke(Color.gr2, lineWidth: 1).frame(width: 350, height: 50)
                HStack{
                    Text("Visa").bold().foregroundColor(.blu1)
                        .padding(.trailing, 135)
                    Text("Change").font(.callout).foregroundColor(.gray)
                }}
            HStack{
                VStack{
                    Text("Total")
                    Text("$61.00")
                }
                ZStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        RoundedRectangle(cornerRadius: 20).fill(.gr1).frame(width: 200, height: 50)
                    })
                    Text("Booking").foregroundColor(.white)
                }
            }
        }.padding()
    }
}

#Preview {
    AppointmView()
}
