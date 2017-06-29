//
//  PlantItems.swift
//  MVVMPlant
//
//  Created by Regina Power on 28/6/17.
//  Copyright © 2017 Permapower. All rights reserved.
//

import Foundation

enum Profile {
	case nameAndType
	case name
}

// Single model with computed properties for the collectionview
protocol ProfileViewModelItem {
	
	// Set the type
	var type: Profile { get }
	
	// Set the number of rows per section
	var rowCount: Int { get }
	
	// Set the section title
	var sectionTitle: String  { get }
}

// Sets the default for the single model
extension ProfileViewModelItem {
	var rowCount: Int {
		return 1
	}
}



class ProfileViewModelNameAndTypeItem: ProfileViewModelItem {
	var type: Profile {
		return .nameAndType
	}
	var sectionTitle: String {
		return "Name and Type"
	}
	
	var rowCount: Int {
		return 2
	}
	
	var plantName: String
	var plantType: String
	
	init(plantName: String, plantType: String) {
		self.plantName = plantName
		self.plantType = plantType
	}
}



class ProfileViewModelNameItem: ProfileViewModelItem {
	var type: Profile {
		return .name
	}
	var sectionTitle: String {
		return "Name"
	}
	
	var plantName: String
	
	init(plantName: String) {
		self.plantName = plantName
	}
}
