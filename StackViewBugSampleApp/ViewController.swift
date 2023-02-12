//
//  ViewController.swift
//  StackViewBugSampleApp
//
//  Created by Lukas Capkovic on 2/11/23.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		let stack = UIStackView(arrangedSubviews: [view1, view2, view3])
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.axis = .horizontal

		view.addSubview(stack)

		let button1 = UIButton(primaryAction: UIAction(title: "Hide view (animated)", handler: { _ in
			UIView.animate(withDuration: 0.2) {
				self.view2.isHidden = true
			}
		}))
		button1.translatesAutoresizingMaskIntoConstraints = false

		let button2 = UIButton(primaryAction: UIAction(title: "Hide view", handler: { _ in
			self.view2.isHidden = true
		}))
		button2.translatesAutoresizingMaskIntoConstraints = false

		let button3 = UIButton(primaryAction: UIAction(title: "Unhide view (animated)", handler: { _ in
			UIView.animate(withDuration: 0.2) {
				self.view2.isHidden = false
			}
		}))
		button3.translatesAutoresizingMaskIntoConstraints = false

		let button4 = UIButton(primaryAction: UIAction(title: "Unhide view", handler: { _ in
			self.view2.isHidden = false
		}))
		button4.translatesAutoresizingMaskIntoConstraints = false

		let buttonStack = UIStackView(arrangedSubviews: [button1, button2, button3, button4])
		buttonStack.spacing = 50
		buttonStack.axis = .horizontal
		buttonStack.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(buttonStack)

		NSLayoutConstraint.activate([
			stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			buttonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			buttonStack.topAnchor.constraint(equalTo: stack.bottomAnchor)
		])

	}

	private lazy var view1: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.backgroundColor = .green

		NSLayoutConstraint.activate([
			view.heightAnchor.constraint(equalToConstant: 200),
			view.widthAnchor.constraint(equalToConstant: 200)
		])
		return view
	}()

	private lazy var view2: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.backgroundColor = .orange

		NSLayoutConstraint.activate([
			view.heightAnchor.constraint(equalToConstant: 200),
			view.widthAnchor.constraint(equalToConstant: 200)
		])
		return view
	}()

	private lazy var view3: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.backgroundColor = .blue

		NSLayoutConstraint.activate([
			view.heightAnchor.constraint(equalToConstant: 200),
			view.widthAnchor.constraint(equalToConstant: 200)
		])
		return view
	}()


}

