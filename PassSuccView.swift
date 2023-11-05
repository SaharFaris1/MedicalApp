//
//  PassSuccView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 21/04/1445 AH.
//

import SwiftUI

struct PassSuccView: View {
    var body: some View {
        ZStack{
            Color.gray.opacity(0.2).ignoresSafeArea()
            NewPassView()
            RoundedRectangle(cornerRadius: 50).stroke(Color.gray, lineWidth: 2)
                .fill(.white)
                .frame(width: 360.0, height: 450)
            
            
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
                Text("Success")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 350.0)
                    .padding()
                Text("Uo have successfully reset your password")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .padding() .multilineTextAlignment(.center)
                Button(action: {
                   
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 60)
                        .background(Color.gr1)
                        .cornerRadius(100)
                }
            }
        }
    }
}

#Preview {
    PassSuccView()
}
