//
//  ProfileView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 20/04/1445 AH.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            ZStack{
                Color.gre1.ignoresSafeArea()
                Image("Ima1").offset(x:170, y: -200)
                VStack{
                    Image("ima2").resizable().scaledToFill().frame(width: 100, height: 100)
                    
                    
                    Text("Amelia Renata").font(.title2).bold().foregroundColor(.white)
                    HStack{
                        HStack(spacing: 40){
                            HStack{
                                VStack{
                                    Image("heart").resizable()
                                        .scaledToFit()
                                        .frame(width: 50)
                                    
                                    Text("Heart rate").font(.callout).foregroundColor(.white)
                                    Text("215bpm").foregroundColor(.white).bold()}
                                Divider().frame(height: 100).foregroundColor(.white)
                            }
                            VStack{
                                Image(systemName: "flame").resizable()
                                    .scaledToFit()
                                    .frame(width: 30).foregroundColor(.white)
                                
                                Text("Heart rate").font(.callout).foregroundColor(.white)
                                Text("215bpm").foregroundColor(.white).bold()}
                            Divider()
                            .frame(height: 100).foregroundColor(.white)}
                        VStack{
                            Image(systemName: "dumbbell.fill").resizable()
                                .scaledToFit().foregroundColor(.white)
                                .frame(width: 40)
                            Text("Heart rate").font(.callout).foregroundColor(.white)
                            Text("215bpm").foregroundColor(.white).bold()}
                    }
                }.padding()
            
            }
            RoundedRectangle(cornerRadius:20).fill(.white)
                .frame(width: 350,height: 10)
            HStack{
                Image(systemName: "heart.circle.fill").foregroundColor(.gr1)
                Text("My Saved")
                Spacer()
                Image(systemName: "chevron.forward")
            }.padding()
            Divider()
            HStack{
                Image(systemName: "heart.circle.fill").foregroundColor(.gr1)
                Text("Appointment")
                Spacer()
                Image(systemName: "chevron.forward")
            }.padding()
            Divider()
            HStack{
                Image(systemName: "creditcard.circle").foregroundColor(.gr1)
                Text("Payment Method")
                Spacer()
                Image(systemName: "chevron.forward")
            }.padding()
            Divider()
            HStack{
                Image(systemName: "heart.circle.fill").foregroundColor(.gr1)
                Text("FaQs")
                Spacer()
                Image(systemName: "chevron.forward")
            }.padding()
            Divider()
            HStack{
                Image(systemName: "exclamationmark.circle").foregroundColor(.red)
                Text("Logout").foregroundColor(.red)
                Spacer()
                Image(systemName: "chevron.forward")
            }.padding()
          
           
        }
    }}

#Preview {
    ProfileView()
}
