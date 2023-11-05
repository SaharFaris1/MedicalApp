//
//  TopDoctorsView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 21/04/1445 AH.
//

import SwiftUI

struct TopDoctorsView: View {
    var body: some View {
        ZStack{Color.gray.opacity(0.1)
                .ignoresSafeArea()
            VStack{
                HStack{
                    Image(systemName: "chevron.left")
                    Text("Top Doctors")
                        .bold()
                        .font(.title)
                        .padding(.leading, 80)
                        Spacer()
                    Image(systemName: "ellipsis")
                }.padding()
                ScrollView{
                    DoctorsView()
                }
            }
        }}}
 
#Preview {
    TopDoctorsView()
}
