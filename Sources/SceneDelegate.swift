//
//  SceneDelegate.swift
//  Test
//
//  Created by Steven Kirke on 25.12.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?

	func scene(
		_ scene: UIScene,
		willConnectTo session: UISceneSession,
		options connectionOptions: UIScene.ConnectionOptions) {
		guard let scene = (scene as? UIWindowScene) else { return }
		let window = UIWindow(windowScene: scene)

		window.rootViewController = UINavigationController(
				rootViewController: assemblyFirstView()
		)

		window.makeKeyAndVisible()
		self.window = window
	}

	private func assemblyFirstView() -> UIViewController {
		let viewController = ContentViewController() // Your ViewController
		return viewController
	}
}
