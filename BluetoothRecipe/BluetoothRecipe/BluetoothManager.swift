//
//  BluetoothManager.swift
//  BluetoothRecipe
//
//  Created by Prof. Dr. Nunkesser, Robin on 04.05.21.
//

import Foundation
import CoreBluetooth
import os.log

class BluetoothManager : NSObject, CBCentralManagerDelegate {
    
    //MARK: - Class Properties
    fileprivate var centralManager : CBCentralManager
    let logger = Logger()
    
    required init(withManager aManager : CBCentralManager = CBCentralManager()) {
        centralManager = aManager
        super.init()
        centralManager.delegate = self
    }
    
    //MARK: - CBCentralManagerDelegate
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        var state : String
        switch central.state {
        case .poweredOn:
            state = "Powered ON"
        case .poweredOff:
            state = "Powered OFF"
        case .resetting:
            state = "Resetting"
        case .unauthorized:
            state = "Unauthorized"
        case .unsupported:
            state = "Unsupported"
        default:
            state = "Unknown"
        }
        
        logger.debug("[Callback] Central Manager did update state to: \(state)")
                
    }
    
/*    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state == .poweredOn {
           central.scanForPeripherals(withServices: nil, options: nil)
           print("Scanning...")
          }
    }*/
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
      guard peripheral.name != nil else {return}
        
        print(peripheral.name!)
        
    
      
    }
    
}
