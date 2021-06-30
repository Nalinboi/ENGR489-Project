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
    Resource(title: "Aunty Dee", description: "Aunty Dee is a free online tool for anyone who needs some help working through a problem. It doesn’t matter what the problem is, you can use Aunty Dee to help you work it through.", website: "www.auntydee.co.nz"),
    Resource(title: "Depression.org.nz" , description: "This website helps New Zealanders recognise and understand depression and anxiety. This website is part of a national public health programme, the National Depression Initiative. It includes The Journal – an online self-help programme.", website: "www.depression.org.nz"),
    Resource(title: "Clearhead", description: "Clearhead is your private wellbeing assistant who will help you with learning about your mental health. Available for free, 24 hours a day, 7 days a week. Receive regular support and advice from your mobile phone or computer wherever you are, whenever you need it" , website: "www.clearhead.org.nz"),
    Resource(title: "Ministry of Health", description: "Here you can find information and resources on how to cope with mental illness.", website: "www.health.govt.nz/your-health/conditions-and-treatments/mental-health"),
//    Resource(title: , description: , website: )
]

let mindfulnessTools = [
    Resource(title: "Mindful", description: "it is the mindful", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz")


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
