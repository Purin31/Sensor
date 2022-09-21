//
//  MotionManager.swift
//  Sensor
//
//  Created by cmStudent on 2022/09/16.
//

import Foundation
import CoreMotion

final class MotionManager {
    // staticでインスタンスを保持しておく
    // MotionManager.sharedでアクセスができる
    static let shared: MotionManager = .init()
    //privateのletでCMMMotionManagerインスタンスを作成する
    private let motion = CMMotionManager()
    
    private let queue = OperationQueue()
    
    //シングルトンにするためにinitを潰す
    private init() { }
    
    func startQueuedUpdate() {
        // 加速度センサーが使えない場合はこの先の処理をしない
        guard motion.isGyroAvailable else { return }
     //更新間隔
    motion.accelerometerUpdateInterval = 6.0 / 60.0 // 0.1秒間隔
    
    // 加速度センサーを利用して値を取得する
    //取ってくるdataの型はCMAcceremoterData?になっている
        
        self.motion.showsDeviceMovementDisplay = true
        
        //motion.startGyroUpdates(to: queue) { data, error in
        
        //dataはオプショナル型なので、安全に取り出す
        self.motion.startDeviceMotionUpdates(using: .xArbitraryZVertical, to: self.queue) { data, error in
        
        if let validData = data {
            
           // 加速度
            print(validData.userAcceleration.x)
            print(validData.userAcceleration.y)
            print(validData.userAcceleration.z)
            
            //回転速度
            print(validData.rotationRate.x)
            print(validData.rotationRate.y)
            print(validData.rotationRate.z)
            
            //重力
            print(validData.magneticField.field.x)
            print(validData.magneticField.field.y)
            print(validData.magneticField.field.z)
            
            // コンパス
            print(validData.magneticField.field.x)
            print(validData.magneticField.field.y)
            print(validData.magneticField.field.z)
            
            
            let x = validData.rotationRate.x
            let y = validData.rotationRate.y
            let z = validData.rotationRate.z

            print("x: \(x)")
            print("y: \(y)")
            print("z: \(z)")

        }
      }
   }
}



