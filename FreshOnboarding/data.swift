//
//  data.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import Foundation

let tabs = [
    Page(image: "bell", title: "Check in", text: "Firstly, make sure you have checked in. \n\nYou need to ensure that a nurse knows that you are waiting in the Emergency Department."),
    Page(image: "clock", title: "Waiting room", text: "Once you have checked into reception, a nurse will find you shortly."),
    Page(image: "person", title: "Triage nurse", text: "A nurse will see you shortly. Here They will triage you. \n\nThis means they will assess your level of severity, and ensure you are safe."),
    Page(image: "bed.double", title: "Emergency Room", text: "You will be admitted into the emergency room where a doctor will treat you. \n\nThe doctor may also provide you with further information so please take notes of any information given.")
]

let mhresources = [
    Resource(title: "The Lowdown", description: "The Lowdown is a popular local mental health application. It has a list of topics and testimonials to choose from. The Lowdown has an experienced group of counsellors who are available 24/7", website: "www.thelowdown.co.nz"),
    Resource(title: "Aunty Dee", description: "Here includes a description for aunty dee", website: "www.auntydee.co.nz")
]

let mindfulnessTools = [
    Resource(title: "Mindful", description: "it is the mindful", website: "www.mindful.org"),
]

struct Page {
    let image: String
    let title: String
    let text: String
}

struct Resource {
    let title: String
    let description: String
    let website: String
}
