//
//  LandmarkDetails.swift
//  LandmarkBookApp
//
//  Created by Wojciech Kudrynski on 05/03/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.location)
                .edgesIgnoringSafeArea(.top)
                .frame(height: UIScreen.main.bounds.height * 0.4)
            Image(landmark.imageName)
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.17)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 15)
                .offset(y: UIScreen.main.bounds.height * -0.08)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                HStack {
                    Text(landmark.country)
                    Spacer()
                    Text(landmark.type)
                }
            }.padding(.horizontal)
            Spacer()
        }
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: londonBridge)
    }
}
