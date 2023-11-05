
import SwiftUI

struct SectionView: View {
    @State var sections: [SectionOfHos] = [
        SectionOfHos(secName: "Doctors", secImage: "stethoscope"),
        SectionOfHos(secName: "Pharmacy", secImage: "pill"),
        SectionOfHos(secName: "Hospital", secImage: "syringe"),
        SectionOfHos(secName: "Ambulance", secImage: "cross.case"),
    ]
    var body: some View {
        HStack {
            ForEach(sections) { sec in
                SectionOfHos(secName: sec.secName, secImage: sec.secImage)
            }
        }
    }
}

struct SectionOfHos: View, Identifiable {
    let id = UUID()
    var secName: String
    var secImage: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20) .stroke(Color.gray.opacity(0.1), lineWidth: 2)
                    .foregroundColor(.white)
                    .frame(width: 75, height: 75)
                
                Image(systemName: secImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .foregroundColor(.gr1)
            }
            
            Text(secName)
                .foregroundColor(.gray)
        }
    }
}

struct SectionsView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
