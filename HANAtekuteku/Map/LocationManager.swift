//
//  LocationManager.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/02.
//
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()

    override init() {
        super.init()
        locationManager.delegate = self
    }

    // 位置情報の許可をリクエスト
    func requestLocationAuthorization() {
        locationManager.requestWhenInUseAuthorization()
        
        // 位置情報の取得開始
        locationManager.startUpdatingLocation()
    }
}
