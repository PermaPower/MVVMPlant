//
//  PlantItemsView.swift
//  MVVMPlant
//
//  Created by Regina Power on 28/6/17.
//  Copyright © 2017 Permapower. All rights reserved.
//

import Foundation

class PlantItemsView: NSObject {
	var items = [ProfileViewModelItem]()
	
	init(profile: Profile) {
		
		super.init()
		
		let plant1 = ProfileViewModelNameAndTypeItem(plantName: "Rose", plantType: "Flower")
		items.append(plant1)
		
		let plant2 = ProfileViewModelNameItem(plantName: "Mushroom")
		items.append(plant2)
		
	}
	
}
