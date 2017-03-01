//
//  NibCellMapperAdapter.swift
//  ViewMapper
//
//  Created by Nick Kuyakanon on 2/24/17.
//  Copyright © 2017 Oinkist. All rights reserved.
//

import Foundation

open class NibCellMapperAdapter<MappableType: ViewMappable>: CellMapperAdapter {
  public typealias T = MappableType
  
  var nib: UINib!
  open var onTapCell: ((T.T, UIViewController) -> Void)? = nil
    
  public init(nib: UINib, initializer: ((NibCellMapperAdapter) -> Void)? = nil) {
    self.nib = nib
    initializer?(self)
  }
  
  open var cellTypes: [CellMapperType] {
    return [CellMapperType(identifier: String(nib.hashValue), nib: nib)]
  }
  
  open func cellIdentifier(forRow row: T.T) -> String {
    return String(nib.hashValue)
  }
}
