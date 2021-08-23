//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by Javier Plaza Sisqués on 23/8/21.
//

import SwiftUI
import MapKit //Importamos la libreria del mapa

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(latitude: 42.60003, longitude: -5.57032)
        
        //Para acercar o alejar la imagen
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
