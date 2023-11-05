import SwiftUI

struct DateView: View {
    @State var dateBo: [DateDetails] = [
        DateDetails(dateDetail: "21", dayDetail: "Mon", recColor: .white, texColor: .black),
        DateDetails(dateDetail: "22", dayDetail: "Tue", recColor: .white, texColor: .black),
        DateDetails(dateDetail: "23", dayDetail: "Wed", recColor: .gr1, texColor: .white),
        DateDetails(dateDetail: "24", dayDetail: "Thu", recColor: .white, texColor: .black),
        DateDetails(dateDetail: "25", dayDetail: "Fri", recColor: .white, texColor: .black),
        DateDetails(dateDetail: "26", dayDetail: "Sat", recColor: .white, texColor: .black)
    ]
    
    var body: some View {
        HStack {
            ForEach(dateBo) { x in
                x
            }
        }
    }
}

struct ProcessView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}

struct DateDetails: View, Identifiable {
    var id = UUID()
    var dateDetail: String
    var dayDetail: String
    var recColor: Color
    var texColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(recColor)
                .frame(width: 60, height: 100)
            
            VStack {
                Text(dateDetail)
                    .font(.title)
                    .foregroundColor(texColor)
                    .bold()
                Text(dayDetail)
                    .foregroundColor(texColor)
            }
        }
    }
}
