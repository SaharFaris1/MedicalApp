//
//  SegmentedView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 21/04/1445 AH.
//

import SwiftUI

struct SegmentedView: View {
    var body: some View {
        @State var info = 1
        var count = ["Email", "Phone"]
        
        
        VStack{
            Picker("Forgot", selection: $info) {
                Text("Email").tag(0)
                Text("Phone").tag(1)
                
            }
            .frame(width: 350)
            .pickerStyle(.segmented)
            .frame(width: 350)
            .cornerRadius(30)
        }
    }
}
#Preview {
    SegmentedView()
}
