import SwiftUI

struct ContentView: View {
    var events: [Event] = loadJSON()
       var groupedEvents: [String: [Event]] = groupEventsByMonthYear(events: loadJSON())
       var sortedKeys: [String] = sortMonthYearKeys(groupedEvents: groupEventsByMonthYear(events: loadJSON()))

    var body: some View {
            NavigationView {
                //Header Part
                VStack {
                    HStack(spacing: -5)
                    {
                        ZStack{
                            Circle()
                                .fill(Color(UIColor(red: 0, green: 0.5, blue: 0, alpha: 0.7)))
                                .frame(width: 30, height: 30)
                                .overlay {
                                    Circle().stroke(.white, lineWidth: 2)
                                }
                                .shadow(radius: 3)
                            Text("JP")
                                .foregroundColor(Color.black)
                        }
                        ZStack{
                            Circle()
                                .fill(Color(UIColor(red: 0, green: 0.5, blue: 0, alpha: 0.7)))
                                .frame(width: 30, height: 30)
                                .overlay {
                                    Circle().stroke(.white, lineWidth: 2)
                                }
                                .shadow(radius: 3)
                            Text("K1")
                                .foregroundColor(Color.black)
                        }
                        ZStack{
                            Circle()
                                .fill(Color(UIColor(red: 0, green: 0.5, blue: 0, alpha: 0.7)))
                                .frame(width: 30, height: 30)
                                .overlay {
                                    Circle().stroke(.white, lineWidth: 2)
                                }
                                .shadow(radius: 3)
                            Text("P")
                                .foregroundColor(Color.black)
                        }
                        Spacer()
                        HStack{
                            Button(action: {}, label:{
                                Text("+")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.173, saturation: 0.712, brightness: 0.774, opacity: 0.928)/*@END_MENU_TOKEN@*/)
                                
                            })
                            .padding(.all)

                        }
                    }
                    .padding(.leading,10)
                    Text("Schedule")
                        .font(.title)
                        .bold()
                        .padding(.trailing,260)
                                 
                   
                    
                    
                    List {
                        ForEach(sortedKeys, id: \.self) { monthYear in
                            Section(header: Text(monthYear)
                                .foregroundColor(Color.black)
                                .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 250))
                                .frame(width: 410, height: 35)
                                .bold()
                                .background(Color(/*@START_MENU_TOKEN@*/Color(hue: 0.173, saturation: 0.712, brightness: 0.774, opacity: 0.928)/*@END_MENU_TOKEN@*/)))
                            {
                                ForEach(groupedEvents[monthYear] ?? [], id: \.self) { event in
                                    NavigationLink(destination: EventView(event: event)) {
                                        
                                        HStack {
                                            VStack {
                                                Text(getDay(from: event.date))
                                                    .font(.title3)
                                                    .bold()
                                                Text(getWeek(from: event.date))
                                                    .frame(width: 50, height: 16)
                                                    .font(.caption)
                                            }
                                            Divider()
                                            
                                            VStack {
                                                Text(event.time)
                                                    .bold()
                                                    .padding(.init(top: 0, leading: 0, bottom: 5, trailing: 105))
                                                Text(event.name)
                                                    .font(.caption)
                                                    .padding(.init(top: 0, leading: 10, bottom: 5, trailing: 75))
                                            }
                                            
                                            Spacer()
                                            ZStack{
                                                Circle()
                                                    .fill(Color(UIColor(red: 0, green: 0.4, blue: 0, alpha: 0.8)))
                                                    .frame(width:40,height:40)
                                                Text("JK")
                                                    .foregroundColor(.white)
                                                    .bold()
                                                    .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 5))
                                            }
                                        }
                                        
                                    }
                                    }
                                }
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
        }
    
    
}


#Preview{
    ContentView()
}
