//
//  ContentViewModel.swift
//  BluetoothRecipe
//
//  Created by Prof. Dr. Nunkesser, Robin on 04.05.21.
//

import Foundation

class ContentViewModel : ObservableObject, PeripheralScannerDelegate {
    var peripheralScanner : PeripheralScanner

    init() {        
        peripheralScanner = PeripheralScanner(services: nil)
        peripheralScanner.scannerDelegate = self
    }
    
    func statusChanges(_ status: PeripheralScanner.Status) {
        
    }
    
    func newPeripherals(_ peripherals: [Peripheral], willBeAddedTo existing: [Peripheral]) {
        
    }
    
    func peripherals(_ peripherals: [Peripheral], addedTo old: [Peripheral]) {
        
    }

}
