//
//  main.swift
//  FirstAssessment
//
//  Created by Ch Pranay on 22/01/25.
//

import Foundation

//print("Hello, World!")

//---------------------------------------------------------------------------
//1 check palindrome
print("enter the a number :")
var num = readLine()
var input = Int(num!)
//var num = 222
var temp = input!
var reverseNumber = 0
while(input! > 0)
{
    let ld = input! % 10
    reverseNumber = reverseNumber * 10 + ld
    input! = input! / 10
}
if(temp == reverseNumber)
{
    print("Given number is palindrome")
}
else{
    print("Given number is not palindrome")
}
//------------------------------------------------------

//2 print duplicates
print("Enter the a String :")
if let  str = readLine(){
    var charCount :[Character : Int] = [:]
        
    for char in str{
        charCount[char,default: 0] += 1
            
    }
    for (char,count) in charCount where count > 1{
        print("character :\(char) is found duplicate and the count is \(count)")
    
    }
}
//------------------------------------------------------
//3
var Store = """
[
    {
    "name": "Event Day 180",
    "date": "2024-07-26",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 179",
    "date": "2024-07-27",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 178",
    "date": "2024-07-28",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 177",
    "date": "2024-07-29",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 176",
    "date": "2024-07-30",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 175",
    "date": "2024-07-31",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 174",
    "date": "2024-08-01",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 173",
    "date": "2024-08-02",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 172",
    "date": "2024-08-03",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 171",
    "date": "2024-08-04",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 170",
    "date": "2024-08-05",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 169",
    "date": "2024-08-06",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 168",
    "date": "2024-08-07",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 167",
    "date": "2024-08-08",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 166",
    "date": "2024-08-09",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 165",
    "date": "2024-08-10",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 164",
    "date": "2024-08-11",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 163",
    "date": "2024-08-12",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 162",
    "date": "2024-08-13",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 161",
    "date": "2024-08-14",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 160",
    "date": "2024-08-15",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 159",
    "date": "2024-08-16",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 158",
    "date": "2024-08-17",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 157",
    "date": "2024-08-18",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 156",
    "date": "2024-08-19",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 155",
    "date": "2024-08-20",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 154",
    "date": "2024-08-21",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 153",
    "date": "2024-08-22",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 152",
    "date": "2024-08-23",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 151",
    "date": "2024-08-24",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 150",
    "date": "2024-08-25",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 149",
    "date": "2024-08-26",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 148",
    "date": "2024-08-27",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 147",
    "date": "2024-08-28",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 146",
    "date": "2024-08-29",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 145",
    "date": "2024-08-30",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 144",
    "date": "2024-08-31",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 143",
    "date": "2024-09-01",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 142",
    "date": "2024-09-02",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 141",
    "date": "2024-09-03",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 140",
    "date": "2024-09-04",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 139",
    "date": "2024-09-05",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 138",
    "date": "2024-09-06",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 137",
    "date": "2024-09-07",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 136",
    "date": "2024-09-08",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 135",
    "date": "2024-09-09",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 134",
    "date": "2024-09-10",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 133",
    "date": "2024-09-11",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 132",
    "date": "2024-09-12",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 131",
    "date": "2024-09-13",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 130",
    "date": "2024-09-14",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 129",
    "date": "2024-09-15",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 128",
    "date": "2024-09-16",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 127",
    "date": "2024-09-17",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 126",
    "date": "2024-09-18",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 125",
    "date": "2024-09-19",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 124",
    "date": "2024-09-20",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 123",
    "date": "2024-09-21",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 122",
    "date": "2024-09-22",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 121",
    "date": "2024-09-23",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 120",
    "date": "2024-09-24",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 119",
    "date": "2024-09-25",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 118",
    "date": "2024-09-26",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 117",
    "date": "2024-09-27",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 116",
    "date": "2024-09-28",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 115",
    "date": "2024-09-29",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 114",
    "date": "2024-09-30",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 113",
    "date": "2024-10-01",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 112",
    "date": "2024-10-02",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 111",
    "date": "2024-10-03",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 110",
    "date": "2024-10-04",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 109",
    "date": "2024-10-05",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 108",
    "date": "2024-10-06",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 107",
    "date": "2024-10-07",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 106",
    "date": "2024-10-08",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 105",
    "date": "2024-10-09",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 104",
    "date": "2024-10-10",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 103",
    "date": "2024-10-11",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 102",
    "date": "2024-10-12",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 101",
    "date": "2024-10-13",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 100",
    "date": "2024-10-14",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 99",
    "date": "2024-10-15",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 98",
    "date": "2024-10-16",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 97",
    "date": "2024-10-17",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 96",
    "date": "2024-10-18",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 95",
    "date": "2024-10-19",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 94",
    "date": "2024-10-20",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 93",
    "date": "2024-10-21",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 92",
    "date": "2024-10-22",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 91",
    "date": "2024-10-23",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 90",
    "date": "2024-10-24",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 89",
    "date": "2024-10-25",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 88",
    "date": "2024-10-26",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 87",
    "date": "2024-10-27",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 86",
    "date": "2024-10-28",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 85",
    "date": "2024-10-29",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 84",
    "date": "2024-10-30",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 83",
    "date": "2024-10-31",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 82",
    "date": "2024-11-01",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 81",
    "date": "2024-11-02",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 80",
    "date": "2024-11-03",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 79",
    "date": "2024-11-04",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 78",
    "date": "2024-11-05",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 77",
    "date": "2024-11-06",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 76",
    "date": "2024-11-07",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 75",
    "date": "2024-11-08",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 74",
    "date": "2024-11-09",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 73",
    "date": "2024-11-10",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 72",
    "date": "2024-11-11",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 71",
    "date": "2024-11-12",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 70",
    "date": "2024-11-13",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 69",
    "date": "2024-11-14",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 68",
    "date": "2024-11-15",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 67",
    "date": "2024-11-16",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 66",
    "date": "2024-11-17",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 65",
    "date": "2024-11-18",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 64",
    "date": "2024-11-19",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 63",
    "date": "2024-11-20",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 62",
    "date": "2024-11-21",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 61",
    "date": "2024-11-22",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 60",
    "date": "2024-11-23",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 59",
    "date": "2024-11-24",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 58",
    "date": "2024-11-25",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 57",
    "date": "2024-11-26",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 56",
    "date": "2024-11-27",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 55",
    "date": "2024-11-28",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 54",
    "date": "2024-11-29",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 53",
    "date": "2024-11-30",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 52",
    "date": "2024-12-01",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 51",
    "date": "2024-12-02",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 50",
    "date": "2024-12-03",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 49",
    "date": "2024-12-04",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 48",
    "date": "2024-12-05",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 47",
    "date": "2024-12-06",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 46",
    "date": "2024-12-07",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 45",
    "date": "2024-12-08",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 44",
    "date": "2024-12-09",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 43",
    "date": "2024-12-10",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 42",
    "date": "2024-12-11",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 41",
    "date": "2024-12-12",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 40",
    "date": "2024-12-13",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 39",
    "date": "2024-12-14",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 38",
    "date": "2024-12-15",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 37",
    "date": "2024-12-16",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 36",
    "date": "2024-12-17",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 35",
    "date": "2024-12-18",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 34",
    "date": "2024-12-19",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 33",
    "date": "2024-12-20",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 32",
    "date": "2024-12-21",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 31",
    "date": "2024-12-22",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 30",
    "date": "2024-12-23",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 29",
    "date": "2024-12-24",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 28",
    "date": "2024-12-25",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 27",
    "date": "2024-12-26",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 26",
    "date": "2024-12-27",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 25",
    "date": "2024-12-28",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 24",
    "date": "2024-12-29",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 23",
    "date": "2024-12-30",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 22",
    "date": "2024-12-31",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 21",
    "date": "2025-01-01",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 20",
    "date": "2025-01-02",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 19",
    "date": "2025-01-03",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 18",
    "date": "2025-01-04",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 17",
    "date": "2025-01-05",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 16",
    "date": "2025-01-06",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 15",
    "date": "2025-01-07",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 14",
    "date": "2025-01-08",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 13",
    "date": "2025-01-09",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 12",
    "date": "2025-01-10",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 11",
    "date": "2025-01-11",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 10",
    "date": "2025-01-12",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 9",
    "date": "2025-01-13",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 8",
    "date": "2025-01-14",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 7",
    "date": "2025-01-15",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 6",
    "date": "2025-01-16",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 5",
    "date": "2025-01-17",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 4",
    "date": "2025-01-18",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 3",
    "date": "2025-01-19",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 2",
    "date": "2025-01-20",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day 1",
    "date": "2025-01-21",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +0",
    "date": "2025-01-22",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +1",
    "date": "2025-01-23",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +2",
    "date": "2025-01-24",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +3",
    "date": "2025-01-25",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +4",
    "date": "2025-01-26",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +5",
    "date": "2025-01-27",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +6",
    "date": "2025-01-28",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +7",
    "date": "2025-01-29",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +8",
    "date": "2025-01-30",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +9",
    "date": "2025-01-31",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +10",
    "date": "2025-02-01",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +11",
    "date": "2025-02-02",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +12",
    "date": "2025-02-03",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +13",
    "date": "2025-02-04",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +14",
    "date": "2025-02-05",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +15",
    "date": "2025-02-06",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +16",
    "date": "2025-02-07",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +17",
    "date": "2025-02-08",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +18",
    "date": "2025-02-09",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +19",
    "date": "2025-02-10",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +20",
    "date": "2025-02-11",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +21",
    "date": "2025-02-12",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +22",
    "date": "2025-02-13",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +23",
    "date": "2025-02-14",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +24",
    "date": "2025-02-15",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +25",
    "date": "2025-02-16",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +26",
    "date": "2025-02-17",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +27",
    "date": "2025-02-18",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +28",
    "date": "2025-02-19",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +29",
    "date": "2025-02-20",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +30",
    "date": "2025-02-21",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +31",
    "date": "2025-02-22",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +32",
    "date": "2025-02-23",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +33",
    "date": "2025-02-24",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +34",
    "date": "2025-02-25",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +35",
    "date": "2025-02-26",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +36",
    "date": "2025-02-27",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +37",
    "date": "2025-02-28",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +38",
    "date": "2025-03-01",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +39",
    "date": "2025-03-02",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +40",
    "date": "2025-03-03",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +41",
    "date": "2025-03-04",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +42",
    "date": "2025-03-05",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +43",
    "date": "2025-03-06",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +44",
    "date": "2025-03-07",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +45",
    "date": "2025-03-08",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +46",
    "date": "2025-03-09",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +47",
    "date": "2025-03-10",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +48",
    "date": "2025-03-11",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +49",
    "date": "2025-03-12",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +50",
    "date": "2025-03-13",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +51",
    "date": "2025-03-14",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +52",
    "date": "2025-03-15",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +53",
    "date": "2025-03-16",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +54",
    "date": "2025-03-17",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +55",
    "date": "2025-03-18",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +56",
    "date": "2025-03-19",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +57",
    "date": "2025-03-20",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +58",
    "date": "2025-03-21",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +59",
    "date": "2025-03-22",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +60",
    "date": "2025-03-23",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +61",
    "date": "2025-03-24",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +62",
    "date": "2025-03-25",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +63",
    "date": "2025-03-26",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +64",
    "date": "2025-03-27",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +65",
    "date": "2025-03-28",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +66",
    "date": "2025-03-29",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +67",
    "date": "2025-03-30",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +68",
    "date": "2025-03-31",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +69",
    "date": "2025-04-01",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +70",
    "date": "2025-04-02",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +71",
    "date": "2025-04-03",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +72",
    "date": "2025-04-04",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +73",
    "date": "2025-04-05",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +74",
    "date": "2025-04-06",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +75",
    "date": "2025-04-07",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +76",
    "date": "2025-04-08",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +77",
    "date": "2025-04-09",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +78",
    "date": "2025-04-10",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +79",
    "date": "2025-04-11",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +80",
    "date": "2025-04-12",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +81",
    "date": "2025-04-13",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +82",
    "date": "2025-04-14",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +83",
    "date": "2025-04-15",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +84",
    "date": "2025-04-16",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +85",
    "date": "2025-04-17",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +86",
    "date": "2025-04-18",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +87",
    "date": "2025-04-19",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +88",
    "date": "2025-04-20",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +89",
    "date": "2025-04-21",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +90",
    "date": "2025-04-22",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +91",
    "date": "2025-04-23",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +92",
    "date": "2025-04-24",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +93",
    "date": "2025-04-25",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +94",
    "date": "2025-04-26",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +95",
    "date": "2025-04-27",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +96",
    "date": "2025-04-28",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +97",
    "date": "2025-04-29",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +98",
    "date": "2025-04-30",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +99",
    "date": "2025-05-01",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +100",
    "date": "2025-05-02",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +101",
    "date": "2025-05-03",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +102",
    "date": "2025-05-04",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +103",
    "date": "2025-05-05",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +104",
    "date": "2025-05-06",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +105",
    "date": "2025-05-07",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +106",
    "date": "2025-05-08",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +107",
    "date": "2025-05-09",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +108",
    "date": "2025-05-10",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +109",
    "date": "2025-05-11",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +110",
    "date": "2025-05-12",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +111",
    "date": "2025-05-13",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +112",
    "date": "2025-05-14",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +113",
    "date": "2025-05-15",
    "time": "15:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +114",
    "date": "2025-05-16",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +115",
    "date": "2025-05-17",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +116",
    "date": "2025-05-18",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +117",
    "date": "2025-05-19",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +118",
    "date": "2025-05-20",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +119",
    "date": "2025-05-21",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +120",
    "date": "2025-05-22",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +121",
    "date": "2025-05-23",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +122",
    "date": "2025-05-24",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +123",
    "date": "2025-05-25",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +124",
    "date": "2025-05-26",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +125",
    "date": "2025-05-27",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +126",
    "date": "2025-05-28",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +127",
    "date": "2025-05-29",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +128",
    "date": "2025-05-30",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +129",
    "date": "2025-05-31",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +130",
    "date": "2025-06-01",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +131",
    "date": "2025-06-02",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +132",
    "date": "2025-06-03",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +133",
    "date": "2025-06-04",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +134",
    "date": "2025-06-05",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +135",
    "date": "2025-06-06",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +136",
    "date": "2025-06-07",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +137",
    "date": "2025-06-08",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +138",
    "date": "2025-06-09",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +139",
    "date": "2025-06-10",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +140",
    "date": "2025-06-11",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +141",
    "date": "2025-06-12",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +142",
    "date": "2025-06-13",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +143",
    "date": "2025-06-14",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +144",
    "date": "2025-06-15",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +145",
    "date": "2025-06-16",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +146",
    "date": "2025-06-17",
    "time": "20:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +147",
    "date": "2025-06-18",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +148",
    "date": "2025-06-19",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +149",
    "date": "2025-06-20",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +150",
    "date": "2025-06-21",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +151",
    "date": "2025-06-22",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +152",
    "date": "2025-06-23",
    "time": "13:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +153",
    "date": "2025-06-24",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +154",
    "date": "2025-06-25",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +155",
    "date": "2025-06-26",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +156",
    "date": "2025-06-27",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +157",
    "date": "2025-06-28",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +158",
    "date": "2025-06-29",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +159",
    "date": "2025-06-30",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +160",
    "date": "2025-07-01",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +161",
    "date": "2025-07-02",
    "time": "17:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +162",
    "date": "2025-07-03",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +163",
    "date": "2025-07-04",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +164",
    "date": "2025-07-05",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +165",
    "date": "2025-07-06",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +166",
    "date": "2025-07-07",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +167",
    "date": "2025-07-08",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +168",
    "date": "2025-07-09",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +169",
    "date": "2025-07-10",
    "time": "11:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +170",
    "date": "2025-07-11",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +171",
    "date": "2025-07-12",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +172",
    "date": "2025-07-13",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +173",
    "date": "2025-07-14",
    "time": "19:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +174",
    "date": "2025-07-15",
    "time": "14:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +175",
    "date": "2025-07-16",
    "time": "10:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +176",
    "date": "2025-07-17",
    "time": "12:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +177",
    "date": "2025-07-18",
    "time": "16:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +178",
    "date": "2025-07-19",
    "time": "09:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +179",
    "date": "2025-07-20",
    "time": "18:00",
    "location": "Central Convention Center"
  },
  {
    "name": "Event Day +180",
    "date": "2025-07-21",
    "time": "10:00",
    "location": "Central Convention Center"
  }
]
"""
//var keys = Store.contains("date")
//var sort = String(keys).sorted(by: >)
//print(sort)

//var keys = try JSONDecoder()
//for (key,values) in Store.enumerated(){

//}
