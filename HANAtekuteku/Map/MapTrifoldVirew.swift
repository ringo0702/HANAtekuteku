//
//  MapTrifoldView.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/01.
//
import SwiftUI
import MapKit
import CoreLocation


struct MapTrifoldView: View {
    let locationManager = LocationManager()

//    @State var position: MapCameraPosition //自分の位置
    @State private var userCameraPosition: MapCameraPosition = .userLocation(fallback: .camera(MapCamera(centerCoordinate: .osakaStation,distance: 5000,pitch: 0)))
    
    @State var searchResults: [MKMapItem] = []
    var body: some View {
        ZStack{
            Map(position: $userCameraPosition) {
                UserAnnotation()
            }
            .mapStyle(.standard(emphasis: .muted, pointsOfInterest: .excludingAll))
            .onAppear {
                locationManager.requestLocationAuthorization()
            }
//            Button(action:{
//                position = .userLocation(fallback: .automatic)
//            }){
//                //現在地表示なら塗りつぶしアイコン
//                ZStack(alignment: .center){
//                    if(position == .userLocation(fallback: .automatic)){
//                        Image(.mapTrifold)
//                    }else{
//                        Image(.mapTrifoldP)
//                    }
//                }
//            }
        }
        
    }
        
}

#Preview {
    MapTrifoldView()
}
