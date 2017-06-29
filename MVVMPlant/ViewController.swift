//
//  ViewController.swift
//  MVVMPlant
//
//  Created by Regina Power on 28/6/17.
//  Copyright © 2017 Permapower. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
	
	let cellID = "cellID"

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		navigationItem.title = "Home"
		
		collectionView?.backgroundColor = UIColor.red
		
		collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
		
	}
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
		
		cell.backgroundColor = UIColor.blue
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: view.frame.width, height: 200)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


// Custom cell for collectionview to display plant data
class PlantCell: UICollectionViewCell {
	override init(frame: CGRect) {
		super.init(frame: frame)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

