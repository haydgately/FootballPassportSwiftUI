//
//  ContentView.swift
//  FootballPassport
//
//  Created by Haydn Joel Gately on 26/06/2020.
//  Copyright © 2020 Haydn Gately. All rights reserved.
//

import SwiftUI
import Combine


struct ContentView: View {
    @ObservedObject private var groundData: FootballGroundData = FootballGroundData()
        
    var body: some View {
        return List(groundData.grounds) { ground in
            Text(ground)
                .fontWeight(.semibold)
                .font(.headline)
                .foregroundColor(.green)
        }
    }
}



class FootballGroundData: ObservableObject {
    @Published var grounds: [String]
    
    init() {
        print("running loadData")
        self.grounds  = [String]()
        loadData()
    }
    
    func loadData() {
        Network.shared.apollo.fetch(query: ChecklistQuery()) { result in
          switch result {
          case .success(let graphQLResult):
            for launch in graphQLResult.data!.visits {
                if launch != nil {
                    if launch.groundName != nil  {
                        self.grounds.append(launch.groundName)
                    }
                }
            }
                        
            print("Success! Result: \(String(describing: self.grounds))")
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }
}


extension String: Identifiable {
    public var id: String { self }
}
