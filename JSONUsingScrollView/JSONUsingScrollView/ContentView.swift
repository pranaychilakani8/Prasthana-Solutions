//
//  ContentView.swift
//  JSONUsingScrollView
//
//  Created by Pranay on 13/02/25.
//

import SwiftUI

struct ContentView: View {
    var events = loadJson()
    var headerSection = uiHeaderView()
    var groupedEvents: [String: [Event]] = groupEventsByMonthYear(events: loadJson())
    var sortedKeys: [String] = sortMonthYearKeys(groupedEvents: groupEventsByMonthYear(events: loadJson()))
    
    var profile = ProfilePage()
    
    var body: some View {
        
        //header Section
        
        VStack{
            headerSection
            Text("Schedule")
                .font(.title)
                .lineLimit(1)
                .fontWeight(.semibold)
                .padding(.trailing,260)
        }
        
        NavigationView{
            ScrollView {
                VStack {
                    ForEach(sortedKeys, id: \.self) { monthYear in
                        Text(monthYear)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 35, alignment: .leading)
                            .padding(.leading)
                            .background(Color(hue: 0.173, saturation: 0.712, brightness: 0.774, opacity: 0.928))
                            .bold()
                        
                        ForEach(groupedEvents[monthYear] ?? [], id: \.self) { event in
                            
                            NavigationLink(destination: EventView(event: event)){
                                HStack{
                                    VStack(){
                                        Text(getDay(dateString: event.date))
                                            .fontWeight(.semibold)
                                            .font(.title2)
                                            .foregroundColor(.black)
                                            .padding(.leading,20)
                                        Text(week(dateString: event.date))
                                            .font(.caption)
                                            .foregroundColor(.black)
                                            .padding(.leading,20)
                                        
                                    }
                                    
                                    Divider()
                                    VStack{
                                        Text(event.time)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.trailing,200)
                                        Text(event.name)
                                            .foregroundColor(.black)
                                            .padding(.trailing,135)
                                    }
                                    Spacer()
                                    
                                    ZStack{
                                        Circle()
                                            .fill(Color(UIColor(red: 0, green: 0.4, blue: 0, alpha: 0.8)))
                                        
                                            .frame(width: 40, height: 40)
                                        Text("JK")
                                            .foregroundColor(.white)
                                        
                                    }
                                    
                                    .padding(.trailing)
                                   
                                }
                                
                                .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                             
                            }
                            Divider()
                        }
                        
                    }
                }
            }
           
        }

        HStack(spacing: 100){
            Button("\( Image(systemName: "house"))") {
                
            }
            
            Button("\(Image(systemName: "chart.line.text.clipboard"))") {
                //logic
            }
            Button("\(Image(systemName: "person.crop.circle"))") {
                //logic
            }

        }
        .listStyle(PlainListStyle())
    }
    
}
#Preview {
    ContentView()
}
