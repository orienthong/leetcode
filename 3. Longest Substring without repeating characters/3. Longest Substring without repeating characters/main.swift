//
//  main.swift
//  3. Longest Substring without repeating characters
//
//  Created by scauos on 2018/4/16.
//  Copyright © 2018年 scauos. All rights reserved.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var characterDict = [Character:Int]()
        var maxLength = 0
        var lastRepeatPos = -1
        var i = 0
        
        for c in s.characters {
            if (characterDict[c] != nil) && (characterDict[c]! > lastRepeatPos) {
                lastRepeatPos = characterDict[c]!
            }
            
            maxLength = max(i - lastRepeatPos, maxLength)
            characterDict[c] = i
            i += 1
        }
        
        return maxLength
    }
}
extension String {
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }

}

var solution = Solution()
var count = solution.lengthOfLongestSubstring("dvdf")
print(count)


