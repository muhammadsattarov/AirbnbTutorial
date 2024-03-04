//
//  ProfileView.swift
//  AirbnbTutorial
//
//  Created by user on 30/12/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            //profile login view
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Log In to start plaing your next trip")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                Button(action: {
                    
                }, label: {
                    Text("Log In")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(width: 350,height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
                
                HStack{
                    Text("Don't have an account?")
                    Button(action: {
                        
                    }, label: {
                        Text("SignUp")
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                            .underline()
                    })
                }
                .font(.caption)
            }
            
            //profile options
            VStack(spacing: 24){
                ProfileOptionsView(imageName: "gear", title: "Settings")
                ProfileOptionsView(imageName: "gear", title: "Accessibillity")
                ProfileOptionsView(imageName: "questionmark.circle", title: "Visit the help senter")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
