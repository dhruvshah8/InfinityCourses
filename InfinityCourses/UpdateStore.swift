//
//  UpdateStore.swift
//  InfinityCourses
//
//  Created by Dhruv Shah on 2020-06-25.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import Combine
import SwiftUI

class UpdateStore: ObservableObject {
   var willChange = PassthroughSubject<Void, Never>()

   var updates: [Update] {
      didSet {
         willChange.send()
      }
   }

   init(updates: [Update] = []) {
      self.updates = updates
   }
}

