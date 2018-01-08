/************************************************************************************************************************************/
/** @file       TexturedView.swift
 *  @project    x
 *  @brief      x
 *  @details    x
 *
 *  @author     Justin Reina, Firmware Engineer, Jaostech
 *  @created    1/8/18
 *  @last rev   1/8/18
 *
 *
 *  @notes      x
 *
 *  @section    Opens
 *      TexturedView allows specification of color
 *
 *  @section    Legal Disclaimer
 *      All contents of this source file and/or any other Jaostech related source files are the explicit property on Jaostech
 *      Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


class TexturedView :  NSObject {
    
    var imageView : UIImageView;
    
    /********************************************************************************************************************************/
    /** @fcn        init()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override init() {
        
        imageView = UIImageView();
        
        super.init();
        
        //@note     finalization of initialization
        
        print("TexturedView.init():    initialization complete");
        
        return;
    }
    

    /********************************************************************************************************************************/
    /** @fcn        frame(_ frame : CGRect)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func frame(_ frame : CGRect) {
        
        imageView.frame = frame;
        
        print("TexturedView.frame():    complete");
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        image(_ image : UIImage)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func image(_ image : UIImage) {
        
        self.imageView.image = image;
        
        print("TexturedView.image():    complete");
        
        return;
    }
    

    /********************************************************************************************************************************/
    /** @fcn        addToView(_ view : UIView)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func addToView(_ view : UIView) {

        view.addSubview(self.imageView);

        print("TexturedView.addToView():    adding to view complete");
        
        return;
    }

}

