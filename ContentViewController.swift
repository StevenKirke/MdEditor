//
//  ContentViewController.swift
//  Test
//
//  Created by Steven Kirke on 25.12.2023.
//

import UIKit

final class ContentViewController: UIViewController {

	// MARK: - Private properties
	private lazy var label: UILabel = createLabel()
	private var constraints = [NSLayoutConstraint]()

	// MARK: - Initialization

	init() {
		super.init(nibName: nil, bundle: nil)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	// MARK: - Lifecycle

	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
	}

	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		layout()
	}
}

// MARK: - Setup UI
private extension ContentViewController {

	private func setupUI() {
		title = "First scene"
		view.backgroundColor = .white

		view.addSubview(label)
	}

	private func createLabel() -> UILabel {
		let label = UILabel()
		label.textColor = .black
		label.text = "This is label"
		label.textAlignment = .center

		label.translatesAutoresizingMaskIntoConstraints = false

		return label
	}
}

// MARK: - Layout UI

private extension ContentViewController {

	func layout() {
		NSLayoutConstraint.deactivate(constraints)
		let newConstraints = [
			label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			label.heightAnchor.constraint(equalToConstant: 40),
			label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
			label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
		]
		NSLayoutConstraint.activate(newConstraints)

		constraints = newConstraints
	}
}
