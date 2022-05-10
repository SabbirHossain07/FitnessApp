//
//  InfoView.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var status = true
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    BackButtonView()
                })
                
                VStack(alignment: .leading) {
                    Text("Back to")
                        .foregroundColor(ColorConstants.textCircleSecendary)
                    Text("settings")
                        .foregroundColor(.white)
                        .bold()
                }
                Spacer()
            }
            
            
            Text("Heart\nLimit")
                .font(.system(size: 50))
                .bold()
                .foregroundColor(.white)
                .padding(.top, 50)
            
            Text("Set a heart rate limit \nfor timely control")
                .font(.system(size: 14))
                .foregroundColor(ColorConstants.textCircleSecendary)
            
            HeartRateOptionView()
            
            Spacer()
            
            Toggle(isOn: $status) {
                Text("Notification")
                    .font(.caption)
                    .foregroundColor(ColorConstants.textCircleSecendary)
            }.toggleStyle(CustomToggleStyle())

                
        }
        .padding(.leading, 30)
        .padding(.bottom, 40)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
