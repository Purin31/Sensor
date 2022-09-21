//
//  SensorView.swift
//  Sensor
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI

struct SensorView: View {
    
    //SensorManagerのインスタンスを利用する
    let motionManager = MotionManager.shared
    
   
    
    var body: some View {
        Button {
            motionManager.startQueuedUpdate()
        } label: {
            Text("センサーを開始します。")
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
    
        }
    }
}

struct SensorView_Previews: PreviewProvider {
    static var previews: some View {
        SensorView()
    }
}
