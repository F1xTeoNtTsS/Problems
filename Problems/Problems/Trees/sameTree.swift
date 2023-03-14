//
//  sameTree.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 14/03/2023.
//

import Foundation

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    guard p != nil || q != nil else { return true }
    guard let p = p, let q = q else { return false }

    return p.val == q.val && isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
}

// https://leetcode.com/problems/same-tree/
// MARK: - Cases
// p = [1,2,3], q = [1,2,3] -> true
// p = [1,2], q = [1,null,2] -> false
//  1            1
//2  null   null   2
