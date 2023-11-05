//
//  ForgetPassView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 21/04/1445 AH.
//

import SwiftUI

struct ForgetPassView: View {
    @State private var email: String = ""
    var body: some View {
        VStack(alignment: .leading)
        {
            Image(systemName: "chevron.left")
                .padding()
            Text("Forgot Ypur Password?").bold().font(.title)
            Text("Enter your email or ypur phone number, we will send you confirmation code ")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .font(.title3).foregroundColor(.gray)
            SegmentedView()
            
        } .padding()
        VStack{
            HStack {
               
                    Image(systemName: "envelope.fill").foregroundColor(.gr1)
                    TextField("Email", text: $email).frame(width: 300)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(30)
                        .background(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                }.padding()
            Button(action: {
            }) {
                Text("Reset Password")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 350)
                    .background(Color.gr1)
                    .cornerRadius(90)
            }
        
        }
        Spacer()
    }
    
}

#Preview {
    ForgetPassView()
}
