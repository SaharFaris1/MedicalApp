//
//  AppointmentSuccView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 19/04/1445 AH.
//

import SwiftUI

struct AppointmentSuccView: View {
    var body: some View {
        ZStack{
            AppointmView().background(Color.gray).opacity(0.4)
            RoundedRectangle(cornerRadius: 50).stroke(Color.gray, lineWidth: 2)
                .fill(.white)
                .frame(width: 350.0, height: 450)
                VStack{
                    ZStack{
                       
                        VStack{
                            Image(systemName: "checkmark.circle")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.gr1)
                                .background(.white)
                                .padding()
                            Text("Payment Success")
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(width: 350.0)
                                .padding()
                            Text("Your payment has been successful, you can have a consultation session with your trusted doctor").frame(width: 350)
                                .font(.title3)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.center)
                            Button(action: {
                                // Perform login action
                            }) {
                                Text("Chat Doctor")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 300, height: 60)
                                    .background(Color.gr1)
                                
                                
                                
                                    .cornerRadius(100)
                            }
                        }
                    }}}}}

    
#Preview {
    AppointmentSuccView()
}
