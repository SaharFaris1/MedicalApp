//
//  LogoutView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 20/04/1445 AH.
//

import SwiftUI

struct LogoutView: View {
    var body: some View {
        ZStack{
            ProfileView()
            Color.gray.opacity(0.4).ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 50).stroke(Color.gray, lineWidth: 2)
                .fill(.white)
                .frame(width: 370.0, height: 450)
            VStack{
                ZStack{
                    Circle().fill(.gray2).frame(width: 100)
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .background(Color.gray2)
                        .foregroundColor(.gr1)
                        .background(.white)
                        .padding()
                    
                }
              
                Text("Are you sure to log out of your account?").padding()
                    .font(.title2)
                    .bold()
                    .padding() .multilineTextAlignment(.center)
                Button(action: {
                  
                }) {
                    Text("Log out")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 60)
                        .background(Color.gr1)
                        .cornerRadius(100)
                }
                .padding()
                Text("Cancel")
                    .font(.headline)
                    .foregroundColor(.gr1)
                    .padding()
                    .frame(width: 200, height: 60)
                    .background(Color.gray2)
                    .cornerRadius(100)
            }
                
            }
        }
    }

#Preview {
    LogoutView()
}
