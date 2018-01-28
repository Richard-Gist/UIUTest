//
//  MiscellaneousTests.swift
//
//	These tests are mostly just here to get the code coverage to 100%.
//
//  Copyright © 2018 Purgatory Design. Licensed under the MIT License.
//

import XCTest
@testable import UIUTestExample

class MiscellaneousTests: XCTestCase
{
	func testPushSiblingViewControllerStoryboardLoad() {
		let viewController = UIViewController.loadFromStoryboard(identifier: "ButtonsViewController", forNavigation: true) as! ButtonsViewController
		let navigationController = viewController.navigationController!

		viewController.pushSiblingViewController(withIdentifier: "SwitchesViewController", storyBoardName: "Main", animated: true)
		RunLoop.current.singlePass()     // allow the animation

		XCTAssertNotNil(navigationController.topViewController as? SwitchesViewController)
	}

	func testDefaultAuthenticator() {
		let defaultAuthenticator = DefaultAuthenticator()

		XCTAssertTrue(defaultAuthenticator.authenticate(user: DefaultAuthenticator.validUser, password: DefaultAuthenticator.validPassword))
	}
}