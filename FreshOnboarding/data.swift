//
//  data.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import Foundation

let overview = [
    Page(image: "administrator1", title: "Check in", text: "When you first enter the Emergency Department (ED), make sure you\n check in at the reception.\n\nHere they will ask for basic \ndetails to put you on the ED patient list."),
    Page(image: "clock", title: "Waiting room", text: "Once you have checked into reception, you will have to wait in the waiting room. \n\nHere, one of four things could happen. You may be triaged, assessed further, admitted, or even discharged home."),
    Page(image: "exclamationmark.bubble", title: "How can we help?", text: "You and your Whānau might need to wait in the waiting room, cubical, corridor, Whānau room. \n\nPlease let the staff know if you need food/drinks/blankets, if things are getting worse, if you are thinking of leaving, medication, or any other help at all."),
    Page(image: "person.3", title: "Who will see you?", text: "There are 3 different people that may see you. \n\nAn ED Doctor (who may refer you to the CRS), \nMental Health Liaison Nurse (on duty only at certain times), \nor Crisis Resolution Service (CRS) (only if you have been referred)"),
    Page(image: "person", title: "Triage nurse", text: "The most likely case is that a triage nurse will see you shortly after checking in. \n\nHere they will triage you, which means they will assess your level of severity, and ensure you are safe, as well as ordering you inside a priority queue to be treated."),]

let people = [
    Page(image: "Administrator", title: "Administrator", text: "Administrator"),
    Page(image: "ED Nurse", title: "ED Nurse", text: "ED Nurse"),
    Page(image: "Health Care Assistant (HCA)", title: "Health Care Assistant (HCA)", text: "Health Care Assistant (HCA)"),
    
    Page(image: "Security orderly", title: "Security orderly", text: "Security orderly"),
    Page(image: "ED mental health nurse", title: "ED mental health nurse", text: "ED mental health  nurse"),
    
    Page(image: "ED doctor", title: "ED doctor", text: "ED doctor"),
    Page(image: "Staff from Crisis Resolution Service (CRS)", title: "Staff from Crisis Resolution  Service (CRS)", text: "Staff from Crisis Resolution Service (CRS)"),
    
    Page(image: "Other doctors (from medical or surgical team)", title: "Other doctors (from medical or     surgical team)", text: "Other doctors (from medical or surgical team)"),
]

let places = [
    Page(image: "bell", title: "we are making places...", text: "places to come "),
]

let procedures = [
    Page(image: "bell", title: "we are making procedures...", text: "procedures to come "),
]

let mhresources = [
    Resource(title: "The Lowdown", description: "The Lowdown is a popular local mental health application. It has a list of topics and testimonials to choose from. The Lowdown has an experienced group of counsellors who are available 24/7", website: "www.thelowdown.co.nz"),
    Resource(title: "Aunty Dee", description: "Aunty Dee is a free online tool for anyone who needs some help working through a problem. It doesn’t matter what the problem is, you can use Aunty Dee to help you work it through.", website: "www.auntydee.co.nz"),
    Resource(title: "Depression.org.nz" , description: "This website helps New Zealanders recognise and understand depression and anxiety. This website is part of a national public health programme, the National Depression Initiative. It includes The Journal – an online self-help programme.", website: "www.depression.org.nz"),
    Resource(title: "Clearhead", description: "Clearhead is your private wellbeing assistant who will help you with learning about your mental health. Available for free, 24 hours a day, 7 days a week. Receive regular support and advice from your mobile phone or computer wherever you are, whenever you need it" , website: "www.clearhead.org.nz"),
    Resource(title: "Ministry of Health", description: "Here you can find information and resources on how to cope with mental illness.", website: "www.health.govt.nz/your-health/conditions-and-treatments/mental-health"),
    Resource(title: "MHAIDS", description: "Gateway to all mentalhealth services" , website: "https://www.mhaids.health.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "https://www.allright.org.nz"),
    Resource(title: "Anxiety.org", description: "Free, information and advice about managing anxiety and stress" , website: "https://www.anxiety.org.nz/"),
]

let mindfulnessTools = [
    Resource(title: "Mindful", description: "Mindful offers courses, corporate training, personal stories, news-you-can-use, practical advice, directories, and insights that speak to anyone from novice meditators looking for guidance to corporate managers exploring new ways to cultivate workplace engagement and fulfillment.", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
]

let anxResources = [
    Resource(title: "Mindful", description: "Mindful offers courses, corporate training, personal stories, news-you-can-use, practical advice, directories, and insights that speak to anyone from novice meditators looking for guidance to corporate managers exploring new ways to cultivate workplace engagement and fulfillment.", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
]

let depResources = [
    Resource(title: "Mindful", description: "Mindful offers courses, corporate training, personal stories, news-you-can-use, practical advice, directories, and insights that speak to anyone from novice meditators looking for guidance to corporate managers exploring new ways to cultivate workplace engagement and fulfillment.", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
]

let bulResources = [
    Resource(title: "Mindful", description: "Mindful offers courses, corporate training, personal stories, news-you-can-use, practical advice, directories, and insights that speak to anyone from novice meditators looking for guidance to corporate managers exploring new ways to cultivate workplace engagement and fulfillment.", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
]

let griefResources = [
    Resource(title: "Mindful", description: "Mindful offers courses, corporate training, personal stories, news-you-can-use, practical advice, directories, and insights that speak to anyone from novice meditators looking for guidance to corporate managers exploring new ways to cultivate workplace engagement and fulfillment.", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
]

let relationshipResources = [
    Resource(title: "Mindful", description: "Mindful offers courses, corporate training, personal stories, news-you-can-use, practical advice, directories, and insights that speak to anyone from novice meditators looking for guidance to corporate managers exploring new ways to cultivate workplace engagement and fulfillment.", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
]

let selfAcceptanceResources = [
    Resource(title: "Mindful", description: "Mindful offers courses, corporate training, personal stories, news-you-can-use, practical advice, directories, and insights that speak to anyone from novice meditators looking for guidance to corporate managers exploring new ways to cultivate workplace engagement and fulfillment.", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
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
