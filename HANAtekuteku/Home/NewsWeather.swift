//
//  NewsWeather.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/01.
//
import SwiftUI

struct NewsWeather: View {
    
    @State var nowDate = Date()
    @State var dateText = ""
    private let dateFormatter = DateFormatter()
    
    init() {
        dateFormatter.dateFormat = "  MM/dd（E）"
        dateFormatter.locale = Locale(identifier: "ja_jp")
    }
    
    var body: some View {
        HStack(spacing: 56) {
            //日付・場所
            VStack(alignment: .center){
                //日付
                Text(dateText.isEmpty ? "\(dateFormatter.string(from: nowDate))" : dateText)
                    .foregroundStyle(.font)
                    .zenFont(.bold, size: 22)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                            self.nowDate = Date()
                            dateText = "\(dateFormatter.string(from: nowDate))"
                        }
                    }
                //場所
                Text("中崎町")
                    .foregroundStyle(.font)
                    .zenFont(.bold, size: 22)
            }
            Image(.sun)
        }
        .frame(maxWidth: .infinity, maxHeight: 130)
        
    }
}


#Preview {
    NewsWeather()
}
