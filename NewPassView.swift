//
//  NewPassView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 21/04/1445 AH.
//

import SwiftUI

struct NewPassView: View {
    
        @State var newPassw: String = ""
        @State var confirmPass: String = ""
        var body: some View {
            VStack{
                VStack{
                    Text("Create New Password").bold().font(.title)
                    Text("Create your new password to login ").foregroundColor(.gray)
                    
                }.padding(.trailing, 70)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(newPassw.isEmpty ? .gray : .red, lineWidth: 2)
                        .frame(width: 350, height: 60)
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                            .padding(.leading, 40)
                        SecureField("Password", text: $newPassw).frame(width: 300)
                        Image(systemName: "eye.slash")
                            .foregroundColor(.gray)
                            .padding(.leading, -50)
                    }
                    .padding()}
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(confirmPass.isEmpty ? .gray : .red, lineWidth: 2)
                        .frame(width: 350, height: 60)
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                            .padding(.leading, 40)
                        SecureField("Password", text: $confirmPass).frame(width: 300)
                        Image(systemName: "eye.slash")
                            .foregroundColor(.gray)
                            .padding(.leading, -50)
                    }
                    .padding()}
                Button(action: {
                }) {
                    Text("Confirm Password")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.gr1)
                        .cornerRadius(90)
                }.padding()
            }.padding(.top, 150)
            Spacer()
    }
}

#Preview {
    NewPassView()
}
