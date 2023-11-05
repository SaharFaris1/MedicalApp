
import SwiftUI
import MapKit
struct MapView: View {
    @State private var name: String = ""
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 24.7136,
            longitude: 46.6753),
        span: MKCoordinateSpan(
            latitudeDelta: 0.5,
            longitudeDelta: 0.5)
    )
    var body: some View {
        
        VStack{
            HStack{
                
                Image(systemName: "chevron.left")
                    .padding(.trailing, 100)
                Text("Ambulance")
                    .padding(.trailing, 100)
            }.padding()
            
            ZStack{
                RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                    .frame(width: 350, height: 50)
                HStack {
                    Image(systemName: "magnifyingglass").padding()
                    TextField("Search drugs, category ...", text: $name)
                }.padding()
            }
            
            ZStack{
                
                Map(coordinateRegion: $region)
                    .edgesIgnoringSafeArea(.all)
                
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white.opacity(0.9)).frame(width: 350, height: 200)
                    VStack{
                        Text("Confirm Your Addres").bold()
                        Divider()
                        HStack{
                            Image(systemName: "pin.fill").foregroundColor(.red)
                            Text("2640Cabin Creek RD#102 Alexandria, Virginia(VA), 22314").foregroundColor(.gray)
                        }
                        Button(action: {
                            
                        }) {
                            Text("Confirm Location")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 300, height: 40)
                                .background(Color.gr1)
                                .cornerRadius(100)
                        }
                        
                        
                    }
                    
                    
                }.offset(y: 210)
                
            }}}
}
#Preview {
    MapView()
}
