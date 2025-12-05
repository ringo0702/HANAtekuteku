//
//  CustomTabBar.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/01.
//
import SwiftUI

struct CustomTabBar: View {
    @EnvironmentObject var select : globalVariables

    let tabIcons = ["House", "PottedPlant", "CameraPlus", "MapTrifold", "Notebook"]
    let tabIconsPink = ["House_p", "PottedPlant_p", "MapTrifold_p", "Notebook_p"]
    let tabNames = ["ホーム", "ガーデン","フォト", "マップ", "日記"]
    
    @State var image: UIImage?
    @State private var showCamera: Bool = false
    @State private var showLibrary: Bool = false
    
    var body: some View {
        ZStack {
            Color.bg.ignoresSafeArea()
            // ビュー
            ZStack {
                
                switch select.selectedIndex {
                case 0:
                    HomeView()
                case 1:
                    GardenView()
                case 2:
                    PhotoPickerView()
                case 3:
                    MapTrifoldView()
                case 4:
                    Notebook()
                default:
                    HomeView()
                }   //swich
                
                VStack{
                    //上部タブ
                    HStack {
                        //上部タブ中身
                        HStack{
                            //ページタイトル
                            if(select.selectedIndex == 0){
                                Image(.appLogo)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 36)
                            }else{
                                Text(tabNames[select.selectedIndex])
                                    .zenFont(.medium, size: 24)
                                
                            }
                            Spacer()
                            //設定アイコン
                            Button(action: {
                                
                            }){
                                Image(.userCircleGear)
                            }
                        }
                        .padding(.top, 50)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 120)
                    .background(Color.bg.opacity(0.7))
                    
                    Spacer()
                    
                    ZStack{
                        Rectangle()
                            .fill(Color.mainGreen)
                            .frame(maxWidth: .infinity, maxHeight: 100
                            )
                            .shadow(color: .bg, radius: 2, x: 0, y: 0)
                        
                        TabBarBottom()

                        .padding(.top, 10)
                        .padding(.bottom, 20)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 100
                    )
                }
            }   // VStack
            .edgesIgnoringSafeArea(.all)
        }   // ZStack
        .fullScreenCover(isPresented: $showCamera) {
            CameraCaptureView(image: $image)
                .ignoresSafeArea()
        }
        .sheet(isPresented: $showLibrary){
            PhotoLibraryPickerView(image: $image)
                .ignoresSafeArea()
                .presentationDetents([.large])
        }
        .confirmationDialog(
            "",
            isPresented: $select.showImagePickerDialog,
            titleVisibility: .hidden
        ) {
            Button {
                showCamera = true
            } label: {
                Text("カメラで撮る")
            }
            Button {
                showLibrary = true
            } label: {
                Text("アルバムから選ぶ")
            }
            Button("キャンセル", role: .cancel) {
                select.showImagePickerDialog = false
            }
        }
    }   //body
}   //View

#Preview {
    CustomTabBar()
        .environmentObject(globalVariables())
}
