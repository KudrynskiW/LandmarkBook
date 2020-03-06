//
//  LandmarkOverview.swift
//  LandmarkBookApp
//
//  Created by Wojciech Kudrynski on 05/03/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import SwiftUI

struct LandmarkOverview: View {
    var body: some View {
        NavigationView {
            List(landmarkArray) { landmark in
                NavigationLink(destination: LandmarkDetails(landmark: landmark)) {
                    HStack {
                        Image(landmark.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.height * 0.05)
                        Text(landmark.name)
                    }
                }.navigationBarTitle("Landmark Book")
            }
        }
    }
}

struct LandmarkOverview_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkOverview()
    }
}
