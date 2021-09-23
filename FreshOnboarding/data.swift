//
//  data.swift
//  FreshOnboarding
//
//  Created by simon on 22/06/21.
//

import Foundation

let tutorial = [
    Page(image: "sun.max.fill", title: "Ki Ora!", text: "Kia ora, welcome to Te Pae Tiaki, Wellington Emergency Department!\n\nIt is normal to feel a variety of emotions when turning up for a mental health and/or addiction crisis. Your physical health and mental health are important to us and we endeavour to support you as best as we can.\n\nWait times for an assessment may take some time, so please ask if you need support in any way. Till then, here is a quick walkthrough of the Clear Skies app."),
    Page(image: "house", title: "Tab 1: Home", text: "The first tab is full of links to walkthrough pages. These walkthroughs will help you with all the information you need about the emergency department (ED).\n\nHere you can gather information of the people, places, and procedures in the ED. There is also a quicker overview, as well as a Clear Skies app tutorial!"),
    Page(image: "heart", title: "Tab 2: Resources", text: "In the resources tab, you will be able to get information on any mental health related topic. We have a select range of topics for you to choose from, and from there, you will be able to click on links to other resources."),
    Page(image: "lightbulb", title: "Tab 3: Tools", text: "The final tab is quite simmilar to the resources tab. We will provide topics, and links for you to choose from. These tools should help you, or someone who is close to you, manage your mental health."),
    ]

let overview = [
    Page(image: "bell", title: "Check in", text: "When you first enter the Emergency Department (ED), make sure you\n check in at the reception.\n\nHere they will ask for basic \ndetails to put you on the ED patient list."),
    Page(image: "clock", title: "Waiting room", text: "Once you have checked into reception, you will have to wait in the waiting room. \n\nHere you will have to wait for a triage nurse to assess you."),
    Page(image: "person", title: "Triage nurse", text: "A triage nurse will see you shortly after checking in. \n\nHere they will triage you, which means they will assess your level of severity, and ensure you are safe, as well as ordering you inside a priority queue to be treated."),
    Page(image: "exclamationmark.bubble", title: "How can we help?", text: "The emergency department can get a bit crowded at times, you and your Whānau might need to wait in the waiting room, cubical, corridor or Whānau room. \n\nPlease let the staff know if you need food/drinks/blankets/medication, if things are getting worse, if you are thinking of leaving, or any other help at all."),
    Page(image: "person.3", title: "Who will see you?", text: "There are 3 different people that may see you after waiting. \n\nAn ED Doctor (who may refer you to the CRS), \nMental Health Liaison Nurse (on duty only at certain times), \nor Crisis Resolution Service (CRS) (only if you have been referred).")
    ]

let people = [
    Page(image: "person", title: "Administrator", text: "The administrator is responsible for organizing and overseeing the health services and daily activities of the emergency department.\n\nThey are also in charge of relaying information onto other staff at the hospital, so it is important that they are aware of your presence.\n\nIf you haven’t already, please check in with the administrator now."),
    
    Page(image: "person", title: "ED Nurse", text: "The Emergency Department Nurse is in charge of triaging all who have checked in with the administrator and are now waiting.\n\nTriaging means they will assess your level of severity, and ensure you are safe, as well as ordering you inside a priority queue to be treated."),
    
    Page(image: "person", title: "ED mental health nurse", text: "Once your physical health has been assessed as ok, ED staff might ask you a bit more about what has been happening, how you are currently feeling and your opinions on what you would like to happen next."),
    
    Page(image: "person", title: "Health Care Assistant (HCA)", text: "Healthcare assistants are trained professionals who not only support staff, but most importantly look after individuals waiting in the emergency department.\n\nIf you need anything at all please try to look for one and ask for assistance if need be."),
    
    Page(image: "person", title: "Security orderly", text: "Security is there to ensure the safety of everyone. They are there to ensure that no patient in the waiting room is causing harm to themselves or anyone else."),
    
    Page(image: "person", title: "ED doctor", text: "An ED doctor often checks out a patient's physical health because poor physical health can affect mental health.\n\nAlso, if you are harmed in some way, they will do some tests and treatments such as taking your blood pressure, taking a blood test, taking an xray, monitoring your heart or giving you medication."),
    
    Page(image: "person", title: "Crisis Resolution Service", text: "Staff from CRS will only come to you if you have been referred. They are here to resolve any crisis you may be currently facing.\n\n The CRS will have a chat with you (and if possible your Whānau) about what has been happening recently, how you are feeling at the moment and what to do next. \n\nWhen the CRT staff is ready to meet up with you, they will either call you into an interview room from the waiting room, or they will see you in a cubicle, or see you in the ED Observation Unit"),
    
//    Page(image: "Other doctors (from medical or surgical team)", title: "Other doctors (from medical or surgical team)", text: "Other doctors (from medical or surgical team)"),
]

let places = [
    Page(image: "mappin.and.ellipse", title: "Triage assessment window", text: "Shortly after arrival, after you have registered with the administrator, the nurse will call you to the window to assess you. Please ask if you need a private space for this."),
    Page(image: "mappin.and.ellipse", title: "Triage assessment room", text: "A room off the waiting room where you and the nurse can have a private chat. The nurse might also check your physical health, e. g. blood pressure."),
    Page(image: "mappin.and.ellipse", title: "Waiting room", text: "People come to ED for various reasons. While we hope to see everyone as quickly as possible, there can be long wait times in ED. We have a large room with many chairs, a water fountain and a snack machine for people while they wait. Triage nurses and administration staff are available for people in the waiting room. If your distress is increasing and you are thinking of leaving ED, please speak to a staff member first."),
    Page(image: "mappin.and.ellipse", title: "Family/whānau room", text: "A space with armchairs and a couch, has coffee/tea facilities."),
    Page(image: "mappin.and.ellipse", title: "Cubicle", text: "A private space with a hospital bed, a sink, physical check-up equipment, e. g. blood pressure machine. The entrance to the cubicle has a curtain and/or a sliding door."),
    Page(image: "mappin.and.ellipse", title: "Corridor", text: "At busy times, some people rest on hospital beds in the corridors while they wait for further assessment and treatment. Doctors and nurses will regularly check in."),
    Page(image: "mappin.and.ellipse", title: "Emergency Department Observation Unit (EDOU)", text: "The EDOU is a 10 bed unit adjacent to the Emergency Department. Most people -are discharged home within 24 hours."),
    Page(image: "mappin.and.ellipse", title: "Crisis Respite and Recovery House", text: "Based in the community, the respite and recovery services offer a welcoming place where people experiencing mental health and/or addiction difficulties can rest and recover in a home-like environment. There are well trained staff available 24 hours a day. The length of stay is flexible, but usually people stay at respite for 2 or 3 days."),
    Page(image: "mappin.and.ellipse", title: "Inpatient ward", text: "If you need to stay in hospital, you might be admitted to a medical ward, such as the Medical Assessment and Planning Unit (MAPU) or to a mental health ward, such as Te Whare O Matairangi (Matairangi) in Wellington or Te Whare Ahuru (Ahuru) in Lower Hutt. The aim is support your recovery by providing the best possible clinical care in a respectful, supportive, safe and caring environment."),
    
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
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
]

let generalResources = [
    Resource(title: "Healthline", description: "For health advice and information", website: "https://www.health.govt.nz/your-health/services-and-support/health-care-services/healthline"),
    Resource(title: "Healthpoint", description: "Up-to-date information about healthcare providers, referral expectations, services offered and common treatments", website: "https://www.healthpoint.co.nz/"),
    Resource(title: "Health Navigator NZ", description: "Strategies to manage the ups and downs of life.", website: "https://www.healthnavigator.org.nz/healthy-living/m/mental-health/"),
    Resource(title: "MHAIDS", description: "Gateway to all mental health services", website: "https://www.mhaids.health.nz/"),
    Resource(title: "Te Haika", description: "Information leaflet from Te Haika", website: "https://www.mhaids.health.nz/our-services/do-you-or-does-someone-you-know-need-help-now/te-haika.pdf"),
    Resource(title: "Mental Health Foundation", description: "Directory of helplines and local mental health services", website: "https://mentalhealth.org.nz/resources/resource/helplines-and-local-mental-health-services"),
]

let anxdepResources = [
    Resource(title: "Mindful", description: "Mindful offers courses, corporate training, personal stories, news-you-can-use, practical advice, directories, and insights that speak to anyone from novice meditators looking for guidance to corporate managers exploring new ways to cultivate workplace engagement and fulfillment.", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
]

let youthResources = [
    Resource(title: "Alcohol and Drug Youth Line", description: "Free, confidential support and guidance, to talk to you about your own drinking or drug use or about another person’s drinking or drug use", website: "https://alcoholdrughelp.org.nz/helpline/services/youth-helpline/"),
    Resource(title: "Aroha Chatbot", description: "Help for young people (13-24 years) cope with stress during Covid-19; evidence-based tools for managing stress, practical ideas to maintain social connection, and to stay active and well through youth-friendly digital activities.", website: "https://www.healthnavigator.org.nz/apps/a/aroha-chatbot/"),
    Resource(title: "Aunty Dee", description: "Aims to help people work through problems by encouraging users to think about, reflect and explore their problems in a structured way. Aimed at Pacific and Māori young people aged 14-25 years. Website includes information on sleeping, relationships, friends, health and school.", website: "https://www.auntydee.co.nz/"),
    Resource(title: "Bounce", description: "Tips, ideas and inspiration to help you live life well; youth-led project developed by New Zealand Red Cross; for young people & by young people", website: "http://bounce.org.nz"),
    Resource(title: "Evolve", description: "Youth One Stop Shop (YOSS) delivering integrated primary health care and social support services to young people age 10-24 years old in the Wellington region. Team of doctors, nurse practitioners, nurses, counsellors, social workers, youth workers and admin staff.", website: "https://www.evolveyouth.org.nz/"),
    Resource(title: "Kidsline", description: "For children and young people, up to 18 years; to help, support and empower the children of New Zealand", website: "http://www.kidsline.org.nz"),
    Resource(title: "Kapiti Youth Support", description: "Youth One Stop Shop (YOSS). Medical and nursing services, sexual health, clinical psychology, counselling, alcohol and drug services, social work, mentoring, parenting, peer support, transition to work, youth development, education programmes and therapeutic groups. All of our services are available free to Kapiti young people aged between 10 and 24 years.", website: "https://kys.co.nz"),
    Resource(title: "Odyssey", description: "To support rangatahi find a way through some of the tough stuff, for people living with drug, alcohol and other addiction challenges", website: "https://www.odyssey.org.nz/our-services/rangatahi"),
    Resource(title: "SPARX", description: "Helps young people learn skills to deal with feeling down, depressed or stressed, proven benefit in people aged 12-19", website: "https://www.sparx.org.nz"),
    Resource(title: "Te Rau Ora", description: "Support for Māori rangatahi", website: "https://terauora.com/our-work/rangatahi/"),
    Resource(title: "The Lowdown", description: "Free 24/7 helpline, to help young New Zealanders recognise and understand depression or anxiety", website: "https://www.thelowdown.co.nz"),
    Resource(title: "Vibe", description: "Youth One Stop Shop (YOSS). Free, confidential health and support services for Hutt Valley young people aged 10 – 24", website: "https://www.vibe.org.nz"),
    Resource(title: "What's Up", description: "Free, nationally-available counselling helpline and webchat service for children and teenagers (5–18 years), run by Barnardos NZ", website: "https://www.whatsup.co.nz"),
    Resource(title: "Youthline", description: "We were established to ensure young people know where to get help and can access support when they need it", website: "https://www.youthline.co.nz/"),
    Resource(title: "", description: "", website: ""),
]

let helplinesResources = [
    Resource(title: "Mindful", description: "Mindful offers courses, corporate training, personal stories, news-you-can-use, practical advice, directories, and insights that speak to anyone from novice meditators looking for guidance to corporate managers exploring new ways to cultivate workplace engagement and fulfillment.", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
]

let identityResources = [
    Resource(title: "Mindful", description: "Mindful offers courses, corporate training, personal stories, news-you-can-use, practical advice, directories, and insights that speak to anyone from novice meditators looking for guidance to corporate managers exploring new ways to cultivate workplace engagement and fulfillment.", website: "www.mindful.org"),
    
    Resource(title: "SPARX", description: "SPARX is an interactive self-help online tool that teaches young people skills to help combat depression and anxiety.", website: "www.mindful.org"),
    
    Resource(title: "Clearhead", description: "We provide you with specific and helpful resources for a range of situations we can all find ourselves in. We offer links to relevant websites, information sheets, books, videos and local support services to help with a wide range of mental health situations. Whatever you need help with, you will find something of value within our app and website." , website: "www.clearhead.org.nz"),
    Resource(title: "All Right", description: "About being your best, coping in touch times, parenting and whānau, tea o Māori practice, identity and culture, workplace wellbeing, connecting with others" , website: "www.allright.org.nz"),
    Resource(title: "Changing Minds", description: "Virtual community events aimed at supporting wellbeing in real-time – meditation, building confidence, tapering off medication support group etc." , website: "www.wellbeingsessions.nz"),
    Resource(title: "Just a thought", description: "On-line courses to help tackle worry and stress (anxiety, depression, staying on track)" , website: "www.justathought.co.nz"),
    Resource(title: "Melon", description: "The app provides access to an online community, daily webinars to support mental health and wellbeing, a health journal, tools to check in with yourself about how you’re feeling and podcasts, videos and articles to help you learn more about how you can look after your mental health and wellbeing" , website: "www.melon.com"),
    Resource(title: "Mentemia", description: "App gives you the ability to monitor, manage and improve your mental health. You can set goals and track progress in much the same way other apps help you to track your physical fitness and health" , website: "www.mentemia.com/nz/home"),
]

let famfriendsResources = [
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
