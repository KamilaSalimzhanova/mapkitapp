import SwiftUI
import MapKit

struct ContentView: View {
    // Координаты региона
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 43.2220, longitude: 76.8512), // Координаты Алматы
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )

    // Массив с данными для городов
    let locationsInKazakstan: [LocationsModel2] = [
        LocationsModel2(name: "Astana", latitude: 51.1694, longitude: 71.4491),
        LocationsModel2(name: "Almaty", latitude: 43.2220, longitude: 76.8512),
        LocationsModel2(name: "Shymkent", latitude: 42.3417, longitude: 69.5901),
        LocationsModel2(name: "Aktobe", latitude: 50.2839, longitude: 57.1667),
        LocationsModel2(name: "Karaganda", latitude: 49.8060, longitude: 73.0869)
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locationsInKazakstan) { location in
            MapAnnotation(coordinate: location.coordinate) {
                VStack {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(.red)
                        .font(.title)
                    Text(location.name)
                        .font(.caption)
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(5)
                }
            }
        }
        .frame(height: 400)
        .cornerRadius(12)
        .padding()
    }
}

// Структура для хранения информации о местоположении
struct LocationsModel2: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double

    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
