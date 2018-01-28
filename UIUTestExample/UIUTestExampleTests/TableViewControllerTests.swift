//
//  TableViewControllerTests.swift
//
//  Copyright © 2017-2018 Purgatory Design. Licensed under the MIT License.
//

import XCTest
@testable import UIUTestExample

class TableViewControllerTests: XCTestCase
{
    override func setUp() {
        super.setUp()
        UIViewController.initializeTestable()
    }

    func testSegueFromInfoButtonToInfoViewController() {
        let viewController = UIViewController.loadFromStoryboard() as! TableViewController
        let tableView = viewController.tableView!

        tableView.simulateAccessoryTouch(at: IndexPath(row: 1, section: 0))

        let segue = viewController.mostRecentlyPerformedSegue!
        XCTAssertEqual(segue.identifier, "Info")
        XCTAssertNotNil(segue.destination as? InfoViewController)
    }

    func testSegueFromTableToNextViewController() {
        let viewController = UIViewController.loadFromStoryboard() as! TableViewController
        let tableView = viewController.tableView!

        tableView.simulateTouch(at: IndexPath(row: 2, section: 0))

        let segue = viewController.mostRecentlyPerformedSegue!
        XCTAssertEqual(segue.identifier, "Next")
        XCTAssertNotNil(segue.destination as? ButtonsViewController)
    }
 }