//
//  ActionSheet.swift
//  MGBottomSheetController
//
//  Created by Guillermo García Rebolo on 23/1/17.
//  Copyright © 2017 Guillermo Garcia Rebolo. All rights reserved.
//

import UIKit

public class ActionSheet: NSObject {
    
    var title = String()
    var iconImage = UIImage()
    var disabled = Bool()
    var completion: (() -> Void)?
    
    override init() {
    }
    
    /**
     Class methods for instantiate an ActionSheet
     
     - Author:
     Guillermo Garcia Rebolo
     
     - returns
     ActionSheet instance.
     
     - parameters:
        - title: The main title of the action sheet.
        - imageIcon: Image of the action sheet.
        - completion: action for execute when the action sheet is selected.
     
     - Version:
     1.0.3
     */
    
    public class func actionWithTitle(_ title: String, imageIcon: UIImage, completion: (() -> Void)? ) -> ActionSheet {
        
        let actionSheet = ActionSheet()
        actionSheet.title = title;
        actionSheet.iconImage = imageIcon.withRenderingMode(.alwaysTemplate)
        actionSheet.completion = completion
        
        return  actionSheet
    }
    
    /**
     Method for set disable a desired action of the MGBottomSheet
     
     - Author:
     Guillermo Garcia Rebolo
     
     - Version:
     1.0.3
     */
    
    public func setActionDisabled() {
        self.disabled = true
    }

}
