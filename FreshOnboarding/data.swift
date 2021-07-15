//
//  data.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import Foundation

let tabs = [
    Page(image: "bell", title: "Check in", text: "When you first enter the Emergency Department (ED), make sure you\n check in at the reception.\n\nHere they will ask for basic \ndetails to put you on the ED patient list."),
    Page(image: "clock", title: "Waiting room", text: "Once you have checked into reception, you will have to wait in the waiting room. \n\nHere, one of four things could happen. You may be triaged, assessed further, admitted, or even discharged home."),
    Page(image: "exclamationmark.bubble", title: "How can we help?", text: "You and your Whānau might need to wait in the waiting room, cubical, corridor, Whānau room. \n\nPlease let the staff know if you need food/drinks/blankets, if things are getting worse, if you are thinking of leaving, medication, or any other help at all."),
    Page(image: "person.3", title: "Who will see you?", text: "There are 3 different people that may see you. \n\nAn ED Doctor (who may refer you to the CRS), \nMental Health Liaison Nurse (on duty only at certain times), \nor Crisis Resolution Service (CRS) (only if you have been referred)"),
    Page(image: "person", title: "Triage nurse", text: "The most likely case is that a triage nurse will see you shortly after checking in. \n\nHere they will triage you, which means they will assess your level of severity, and ensure you are safe, as well as ordering you inside a priority queue to be treated."),
    Page(image: "bed.double", title: "Emergency Room", text: "An assessment by the triage nurse or a specialist can potentially lead to you being discharged home early. \n\n If not however, you may be admitted inside the Impatient or ED wards. These are also known as the emergency rooms, where you will be treated.")
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
