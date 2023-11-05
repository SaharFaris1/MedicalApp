
import SwiftUI

struct FindDocView: View {
    @State var secDr: [FindDoctorsView] = [
        FindDoctorsView(sectName: "General", sectImage: "stethoscope"),
        FindDoctorsView(sectName: "Lungs Specialist", sectImage: "pill"),
        FindDoctorsView(sectName: "Dentist", sectImage: "staroflife"),
        FindDoctorsView(sectName: "Psychiatrist", sectImage: "bubbles.and.sparkles")
    ]
    
    @State var secDr2: [FindDoctorsView] = [
        FindDoctorsView(sectName: "Surgeon", sectImage: "scribble.variable"),
        FindDoctorsView(sectName: "Cardiologist", sectImage: "syringe"),
        FindDoctorsView(sectName: "Covid-19", sectImage: "cross.case")
    ]
    var body: some View {
        VStack {
            HStack {
                ForEach(secDr) { sect in
                    FindDoctorsView(sectName: sect.sectName, sectImage: sect.sectImage)
                }
            }
            
            HStack {
                ForEach(secDr2) { sect2 in
                    FindDoctorsView(sectName: sect2.sectName, sectImage: sect2.sectImage)
                }
            }
        }
    }
}
#Preview {
    FindDocView()
}

struct FindDoctorsView: View, Identifiable {
    let id = UUID()
    var sectName: String
    var sectImage: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20).stroke(Color.gray.opacity(0.1), lineWidth: 2)
                    .foregroundColor(.white)
                    .frame(width: 75, height: 75)
                
                Image(systemName: sectImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .foregroundColor(Color("gr1"))
            }
            
            Text(sectName)
                .foregroundColor(.gray)
        }
    }
}
