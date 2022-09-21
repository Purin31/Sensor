//
//  ContentView.swift
//  Sensor
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                
                Text("センサーを開始します")
                    .font(.title)
                    .foregroundColor(Color.blue)
                Text("注意: PCが無いとセンサーが実装されません")
                Text( "PCで確認してください。")
                
                HStack {
                    NavigationLink(
                        destination:
                            SensorView()) {
                                HStack {
                                    
                                    Text("スタート")
                                        .frame(width: 100, height: 80 )
                                        .foregroundColor(Color.green)
                                        .background(Color.primary)
                                        .clipShape(Circle())
                                    
                                    
                                }
                            }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

