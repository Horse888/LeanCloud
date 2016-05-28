//
//  LCRole.swift
//  LeanCloud
//
//  Created by Tang Tianyong on 5/7/16.
//  Copyright © 2016 LeanCloud. All rights reserved.
//

import Foundation

/**
 LeanCloud role type.

 A type to group user for access control.
 Conceptually, it is equivalent to UNIX user group.
 */
public final class LCRole: LCObject {
    /**
     Name of role.

     The name must be unique throughout the application.
     It will be used as key in ACL to refer the role.
     */
    public dynamic var name: LCString?

    /// Relation of users.
    public dynamic var users: LCRelation?

    /// Relation of roles.
    public dynamic var roles: LCRelation?

    override class func classEndpoint() -> String {
        return "roles"
    }

    public override class func objectClassName() -> String {
        return "_Role"
    }

    public required init() {
        super.init()
    }

    /**
     Create an role with name.

     - parameter name: The name of role.
     */
    public convenience init(name: String) {
        self.init()
        self.name = LCString(name)
    }
}