//
//  LinksPage.swift
//  MindVenture2
//
//  Created by Veronica Alcaraz on 6/14/23.
//

import SwiftUI

struct LinksPage: View {
    var body: some View {
        
        ZStack {
            Color("Green1")
                .edgesIgnoringSafeArea(.all)
                
            

            VStack {
                Text("Mental Health Resource Links")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.title)
                    .bold()
                    .foregroundColor(Color(hue: 0.967, saturation: 0.739, brightness: 0.983))
                    .overlay (
                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.green, lineWidth: 6)
                                    )
            Spacer()
                
                Link(destination: URL(string: "https://www.mayoclinic.org/diseases-conditions/anxiety/symptoms-causes/syc-20350961")!) {
                    Text("Learn more about anxiety.")
                    
                }
                
                Link(destination: URL(string: "https://careinfo.mayoclinic.org/mh-depression?mc_id=google&campaign=18451827493&geo=9022196&kw=depression&ad=638111103999&network=g&sitetarget=&adgroup=142809945300&extension=&target=kwd-10387231&matchtype=b&device=c&account=7470347919&placementsite=enterprise&gclid=Cj0KCQjw7aqkBhDPARIsAKGa0oITnZe2v92XxWCGKmeNXUxkif4knlC4L6DyHGyzXqbIE2XoM2pPO-QaAuSzEALw_wcB")!) {
                    Text("Learn more about depression.")
                }
                Link(destination: URL(string:"https://www.mind.org.uk/information-support/types-of-mental-health-problems/")!) {
                    Text("Overall mental health.")
                
                }
                
                Spacer()
                
                Text("If you or someone you know is in crisis, please call the Suicide Hotline:")
                                .padding()
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hue: 0.967, saturation: 0.739, brightness: 0.983))
                            
                            Link("Call Suicide Hotline", destination: URL(string: "tel:1-800-273-TALK")!)
                                .font(.title)
                                .padding()
                                .frame(width: 350, height: 200)
            }
            .padding()
            
        }
        .overlay(
                    RoundedRectangle(cornerRadius: 60)
                        .stroke(Color.pink, lineWidth: 58)
                        .edgesIgnoringSafeArea(.all)
                        .overlay(
                                            RoundedRectangle(cornerRadius: 60)
                                                .stroke(Color.green, lineWidth: 15)
                                                .edgesIgnoringSafeArea(.all)
                                        )
                )
    }
    
    struct LinksPage_Previews: PreviewProvider {
        static var previews: some View {
            LinksPage()
        }
    }
}
