//
//  ObjectOperationControl.swift
//  LeanCloud
//
//  Created by Tang Tianyong on 2/24/16.
//  Copyright © 2016 LeanCloud. All rights reserved.
//

import Foundation

extension Object {
    class OperationHub {
        /// Operations list.
        /// Used to store all object operations.
        lazy var operations = [Operation]()

        /**
         Append an operation to hub.

         - parameter operation: Operation to append.
         */
        func append(operation: Object.Operation) {
            self.operations.append(operation)
        }
    }
}