//
//  PaymentSuccView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 20/04/1445 AH.
//

import SwiftUI

struct PaymentSuccView: View {
    var body: some View {
        ZStack{
            CartView()
            Color.gray.opacity(0.4).ignoresSafeArea()
          
            RoundedRectangle(cornerRadius: 50).stroke(Color.gray, lineWidth: 2)
                .fill(.white)
                .frame(width: 370.0, height: 450)
            
            
            VStack{
                ZStack{
                    Circle().fill(.gray2).frame(width: 100)
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .background(Color.gray2)
                        .foregroundColor(.gr1)
                        .background(.white)
                        .padding()
                    
                }
                Text("Payment Success")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(width: 350.0)
                    .padding()
                Text("Your payment has been successful, you can have a consultation session with your trusted doctor").padding()
                    .font(.title2)
                    .foregroundColor(.gray)
                    .padding() .multilineTextAlignment(.center)
                Button(action: {
                  
                }) {
                    Text("Back to Home")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 60)
                        .background(Color.gr1)
                        .cornerRadius(100)
                }
            }
        }
    }
}

#Preview {
    PaymentSuccView()
}
