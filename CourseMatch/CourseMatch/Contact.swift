//
//  Contact.swift
//  CourseMatch
//
//  Created by Kei Ogawa on 7/15/21.
//

import Foundation
import SwiftUI

struct Contact: Hashable {
    let imageName: String
    let name: String
    let major: String
    let icon: String
    let fallOne: String
    let fallTwo: String
    let fallThree: String
    let fallFour: String
    let fallFive: String
    let springOne: String
    let springTwo: String
    let springThree: String
    let springFour: String
    let springFive: String
    let id = UUID()
}

let contacts = [
    Contact(imageName: "KeiOgawa", name: "DSCC/ Kei Ogawa  (so)", major: "Data Science", icon: "pencil.slash", fallOne: "CSC 172 Data Structures & Algorithms", fallTwo: "MATH 161 Calculus la", fallThree: "MATH 150 Discrete Mathematics", fallFour: "WRTG 105 Life in the Digital Age", fallFive: "", springOne: "MATH 162 Calculus lla", springTwo: "DSCC 265 Intermed Stastical Methods", springThree: "DSCC 201 Tools for Data Science", springFour: "PHIL 235 Data, Algorithms, Justice", springFive: "Econ 207" ),
    Contact(imageName: "AbeWei", name: "Bio/ Abe Wei  (fr)", major: "Biology", icon: "lasso", fallOne: "Intro to Biology", fallTwo: "Biology Medicine", fallThree: "Marine Biology", fallFour: "Disease in Biology", fallFive: "", springOne: "Spanish II", springTwo: "Calculus III", springThree: "Animal Behavior", springFour: "HTML Course", springFive: "" ),
    Contact(imageName: "JeremySuh", name: "FS/ Jeremy Suh  (se)",major: "Film Studies", icon: "folder", fallOne: "Writing Seminor", fallTwo: "Chemical Engineering", fallThree: "Creative Writing", fallFour: "Think and Grow Rich", fallFive: "Accounting 789", springOne: "Spanish I", springTwo: "$100 StartUp", springThree: "Website Design", springFour: "Intro to Filming", springFive: "" ),
    Contact(imageName: "EliBak", name: "PS/ Eli Bak  (ju)", major: "Political Science", icon: "scribble", fallOne: "Intro to PS", fallTwo: "Government Studies", fallThree: "Anthopology Course", fallFour: "Writing for Life", fallFive: "", springOne: "CompSci 101", springTwo: "Calculus I", springThree: "Int. Relation", springFour: "Independent Study", springFive: "Calculus 90" ),
    Contact(imageName: "AndrewWu", name: "Chemistry/ Andrew Wu  (so)", major: "Chemistry", icon: "tray.fill", fallOne: "Intro to Chemistry", fallTwo: "Chemical Lab II", fallThree: "Physics III", fallFour: "Stocks Knowledge", fallFive: "", springOne: "SwiftUI course", springTwo: "Next Chemistry", springThree: "What are Cells", springFour: "Biology Chapter", springFive: "Robinhood 4220" ),
    Contact(imageName: "WilliamTsai", name: "ES/ William Tsai  (se)", major: "Environmental Science", icon: "circle.grid.cross", fallOne: "Nature Studies", fallTwo: "Bio Chem I", fallThree: "French Honors", fallFour: "Environmental Science Lab", fallFive: "", springOne: "Java Script", springTwo: "Intro to Ecology", springThree: "Wildlife Ecology", springFour: "Climate and Atmosphere", springFive: "" ),
    Contact(imageName: "ShaneLerkvikarn", name: "EG/ Shane Lerkvikarn  (ju)", major: "Engineering", icon: "dpad.right.fill", fallOne: "Computer Engineering", fallTwo: "Chemical Engineering", fallThree: "Civil Engineering", fallFour: "Audio Engineering", fallFive: "", springOne: "Aerospace Engineering", springTwo: "Biomedical Engineering", springThree: "Agricultural Engineering", springFour: "NEU Tennis", springFive: "" ),
    Contact(imageName: "EvanPorco", name: "EC/ Evan Porco  (so)", major: "Economics", icon: "r.joystick.down.fill", fallOne: "International Finance", fallTwo: "Principles of Microeconomics", fallThree: "Data Visualization", fallFour: "Intermediate Micro Theory", fallFive: "Fluent Japanese 200", springOne: "Running Track", springTwo: "Principles of Macroeconomics", springThree: "Calculus II", springFour: "Macro Theory", springFive: "" ),
    Contact(imageName: "DoyleYang", name: "BU/ Doyle Yang  (se)", major: "Business", icon: "bolt.horizontal.fill", fallOne: "Business Law", fallTwo: "Accounting", fallThree: "Micro Economics", fallFour: "Statistics", fallFive: "", springOne: "International Business", springTwo: "Human Resource Management", springThree: "Speech/Communication", springFour: "Financial Accounting", springFive: "" ),
    Contact(imageName: "DiegoSoto", name: "HI/ Diego Soto  (gr)", major: "History", icon: "wave.3.left", fallOne: "European History", fallTwo: "American History", fallThree: "Non-Western History", fallFour: "The Americans Civil War", fallFive: "", springOne: "Lift", springTwo: "Freedom and Responsibility", springThree: "Myth and Reality", springFour: "Biography History", springFive: ""),
    Contact(imageName: "JustinChiu", name: "NU/ Justin Chiu  (fr)", major: "Nursing", icon: "personalhotspot", fallOne: "Human Development", fallTwo: "Psychology", fallThree: "Basic Nutrition", fallFour: "Chemistry II", fallFive: "", springOne: "Physiology", springTwo: "Human Anatomy", springThree: "Microbiology I", springFour: "Nursing Science", springFive: "Spanish 346" )
    
]
