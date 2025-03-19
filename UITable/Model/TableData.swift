//
//  TableData.swift
//  UITable
//
//  Created by Екатерина Яцкевич on 19.03.25.
//

import Foundation

struct TableData {
    let image: String
    let text: String
    var description: String?
    
    static func createData() -> [[TableData]] {
        [
            [
                TableData(image: "figure.badminton", text: "User 1"),
                TableData(image: "figure.baseball", text: "User 2"),
                TableData(image: "figure.basketball", text: "User 3"),
                TableData(image: "figure.boxing", text: "User 4")
            ],
            [
                TableData(image: "tennis.racket", text: "Group 1", description: "tennis"),
                TableData(image: "baseball.circle", text: "Group 2", description: "baseball"),
                TableData(image: "basketball.fill", text: "Group 3", description: "basketball"),
                TableData(image: "trophy", text: "Group 4", description: "trophy"),
            ]
        ]
    }
}


