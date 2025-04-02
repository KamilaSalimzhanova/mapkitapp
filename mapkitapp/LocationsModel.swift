import Foundation
import MapKit
 
struct LocationsModel: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double

    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

let locationsInKazakstan: [LocationsModel] = [
    LocationsModel(name: "Astana", latitude: 51.1694, longitude: 71.4491),
    LocationsModel(name: "Almaty", latitude: 43.2220, longitude: 76.8512),
    LocationsModel(name: "Shymkent", latitude: 42.3417, longitude: 69.5901),
    LocationsModel(name: "Aktobe", latitude: 50.2839, longitude: 57.1667),
    LocationsModel(name: "Karaganda", latitude: 49.8060, longitude: 73.0869)
]
