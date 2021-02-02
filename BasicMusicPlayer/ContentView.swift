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
    
    var body: some View {
        VStack {
            HStack {
                Text("⚉ Music")
                    .font(.system(size: 45))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(.red)
                    
            }
            HStack {
                Button(action: {
                    audioPlayer.play()
                }) {
                    Text("🍤")
                        .font(.system(size: 45))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundColor(.red)                }
                Button(action: {
                    audioPlayer.stop()
                }) {
                    Text("🛑")
                        .font(.system(size: 45))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundColor(.red)                }
                
                Button(action: {
                    audioPlayer.pause()
                }) {
                    Text("⏸")
                        .font(.system(size: 45))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundColor(.red)                }

            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: "song1", ofType: "mp3")
            audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
