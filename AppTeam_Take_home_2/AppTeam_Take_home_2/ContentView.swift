//
//  ContentView.swift
//  AppTeam_Take_home_2
//
//  Created by Julianne Rejesus  on 9/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("BlueGradient")
                .resizable()
                .ignoresSafeArea()  // Ensures the background image fills the screen
            
            // Everything
            VStack(spacing: 20) {
                // Top Line with drop down, artist name, and ellipsis
                
                HStack {
                    Image(systemName: "chevron.down")
                        .resizable()
                        .frame(width: 20, height: 10)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Text("Djo")
                        .font(.subheadline)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.white)
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                // Album cover
                Image("DecideDjo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 350)  // Adjust based on image size
                
                Spacer()
                // Slider and play buttons
                VStack {
                    
                    // HStack for Song Title, Artist and "+" button
                    HStack {
                        
                        VStack(alignment: .leading){
                            Text("End of Beginning")
                                .font(.title2)
                                .foregroundStyle(.white)
                                .bold()
                            
                            Text("Djo")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                        }
                    
                        
                        Spacer()
                        
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)  // Ensures the "+" is visible
                    }
                    .padding(.horizontal, 20)  // Adds padding to keep it on-screen
                    
                    Slider(value: .constant(0.5), in: 0...1)
                    .accentColor(.white)
                    .padding(.horizontal, 20)
                     
                    HStack {
                        Text("1:52")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                                
                        Spacer()
                                    
                        Text("-0:46")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                    }
                    .padding([.leading, .trailing], 20)
                    
                    // Play buttons
                    HStack {
                        Image(systemName: "shuffle")
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image(systemName: "backward.end.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                        
                        Spacer()
                        
                        Image(systemName: "play.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 75))
                        
                        Spacer()
                        
                        Image(systemName: "forward.end.fill")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                        
                        Spacer()
                        
                        Image(systemName: "arrow.trianglehead.rectanglepath")
                            .foregroundStyle(.white)
                            .font(.system(size: 18))
                    } .padding(.horizontal, 20)
                    
                    Spacer()
                    
                    // Bluetooth, share, queue buttons
                    HStack {
                        Image(systemName: "tv.and.hifispeaker.fill")
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.white)
                            
                        Image(systemName: "text.justify")
                            .foregroundColor(.white)
                        
                    } .padding(.horizontal, 20)
                }
                .padding(.bottom, 60)
            }
            .padding(.top, 5)  // Adjusts spacing from the top
        }
    }
}

                        
#Preview {
    ContentView()
}
