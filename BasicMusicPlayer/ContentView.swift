//
//  ContentView.swift
//  BasicMusicPlayer
//
//  Created by P.M. Student on 2/2/21.
//

import SwiftUI
import AVKit

struct ContentView: View {
    // Implicitly Unwrapped Optional
    @State var audioPlayer: AVAudioPlayer!
    @State var song = 1
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text("🐌 Music Player")
                        .font(.system(size: 45))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundColor(.orange)
                        .padding(.bottom, 0.0)
                        .background(Capsule().fill(Color.red))
                    
                    Image("snaill")
                        .resizable()
                        .frame(width: 200.0, height: 197.0)
                        .scaledToFit()
                        .background(Capsule().fill(Color.red))
                            
                    
                }
                .padding()
                
                HStack {
                    Button(action: {
                        audioPlayer.play()
                    }) {
                        Text("▶︎")
                            .font(.system(size: 45))
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .foregroundColor(.orange)
                            .padding()
                            .background(Capsule().fill(Color.red))
                    }
                    //                Button(action: {
                    //                    audioPlayer.stop()
                    //                }) {
                    //                    Text("🛑")
                    //                        .font(.system(size: 45))
                    //                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    //                        .bold()
                    //                        .foregroundColor(.red)                }
                    //
                    Button(action: {
                        audioPlayer.pause()
                    }) {
                        Text("◼︎")
                            .font(.system(size: 45))
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .foregroundColor(.orange)
                            .padding()
                            .background(Capsule().fill(Color.red))
                    }
                    Button(action: {
                        if self.song < 3 {
                            self.song += 1
                        }else {
                            self.song = 1
                        }
                        let sound = Bundle.main.path(forResource: "song\(self.song)", ofType: "mp3")
                        audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                        audioPlayer.play()
                        
                        
                    }) {
                        Text("⇥")
                            .font(.system(size: 45))
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .foregroundColor(.orange)
                            .padding()
                            .background(Capsule().fill(Color.red))
                    }
                    
                }
            }
            .onAppear {
                let sound = Bundle.main.path(forResource: "song1", ofType: "mp3")
                audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
