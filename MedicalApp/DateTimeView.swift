
import SwiftUI
struct DateTimeView: View {
    @State var timeDate: [TheDatetime] = [
        TheDatetime(time: "09:00AM", recttColor: .white, texColor: .gr4),
        TheDatetime(time: "01:00PM", recttColor: .white, texColor: .gr4),
        TheDatetime(time: "04:00PM", recttColor: .white, texColor: .black),
        TheDatetime(time: "10:00AM", recttColor: .white, texColor: .black),
        TheDatetime(time: "02:00PM", recttColor: .gr1, texColor: .white),
        TheDatetime(time: "07:00PM", recttColor: .white, texColor: .black),
        TheDatetime(time: "11:00AM", recttColor: .white, texColor: .gr4),
        TheDatetime(time: "03:00AM", recttColor: .white, texColor: .black),
        TheDatetime(time: "08:00PM", recttColor: .white, texColor: .gr4)
    ]
   var col = [GridItem(.fixed(125)) , GridItem(.fixed(125)), GridItem(.fixed(125))]
    var body: some View {
        VStack{
            LazyVGrid(columns: col, spacing: 20) {
                ForEach(timeDate) { x in
                    TheDatetime(time: x.time , recttColor: x.recttColor, texColor: x.texColor)
                }
            }.padding(.horizontal)
        }}
}
#Preview {
    DateTimeView()
}
struct TheDatetime: View , Identifiable{
    var id = UUID()
    var time: String
    var recttColor: Color
    var texColor: Color
    
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25.0).stroke(Color.gr4 , lineWidth: 3).fill(recttColor)
                    
                    
                    .frame(width: 120, height: 60)
                Text(time).foregroundColor(texColor)
                
            }
        }
    }
}
