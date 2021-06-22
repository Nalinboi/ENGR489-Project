//
//  data.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import Foundation

let tabs = [
    Page(image: "walkthrough1", title: "Entrance", text: "Hey make sure you check in"),
    Page(image: "walkthrough2", title: "Waiting room", text: "Uh you gotta wait a little bit"),
    Page(image: "walkthrough3", title: "Admission", text: "A nurse will be coming to see you shortly")
]

struct Page {
    let image: String
    let title: String
    let text: String
}
