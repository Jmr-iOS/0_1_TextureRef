/************************************************************************************************************************************/
/** @file		ViewController.swift
 *  @project    0_1 - Texture Reference
 * 	@brief		x
 * 	@details	x
 *
 * 	@author		Justin Reina, Firmware Engineer, Jaostech
 * 	@created	11/12/15
 * 	@last rev	1/8/18
 *
 *
 * 	@notes		x
 *
 * 	@section	Opens
 * 			TexturedView allows specification of color
 *
 * 	@section	Legal Disclaimer
 * 			All contents of this source file and/or any other Jaostech related source files are the explicit property on Jaostech
 * 			Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


class ViewController: UIViewController {

    //UI Components
    var image : TexturedView;
    var text  : UITextView;
    var label : UILabel;

    
    /********************************************************************************************************************************/
    /** @fcn        init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        
        //Init State
        image = TexturedView();
        text  = UITextView();
        label = UILabel();
        
        //Super
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
        
        //@todo     init code
        
        print("ViewController.init():        initialization complete");
            
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        viewDidLoad()
     *  @brief      Called after the controller's view is loaded into memory
     *  @details    x
     */
    /********************************************************************************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;

        //Generate example textured components
        genTexturedView(self.view);
        genTextView(self.view);
        genLabel(view: self.view, color: UIColor.orange);
        
        //listen to 'Home' press
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(UIApplicationDelegate.applicationWillResignActive(_:)),
                                               name: NSNotification.Name.UIApplicationWillResignActive,
                                               object: nil);
    
        print("ViewController.viewDidLoad(): load complete");
            
        return;
    }

    
    /********************************************************************************************************************************/
    /** @fcn        genTexturedView(_ view:UIView)
     *  @brief      add a textured view to the view
     *  @details    x
     */
    /********************************************************************************************************************************/
    func genTexturedView(_ view:UIView) {
  
        image.frame(CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50));
        image.color(UIColor.purple);
        
        image.addToView(view);

        
        print("ViewController.genTxView():   textured view added");
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        genTextView(_ view:UIView)
     *  @brief      add a textview to the view
     *  @details    x
     */
    /********************************************************************************************************************************/
    func genTextView(_ view:UIView) {
        
        //Load Text
        text.frame = CGRect(x: 5, y: 70, width: (UIScreen.main.bounds.width-10), height: 100);
        text.textAlignment = .left;
        text.textColor = UIColor.black;
        text.backgroundColor = UIColor(patternImage: UIImage(named: "blue_example")!);              /* apply texture                */
        text.text = "Sample text";
        text.font = UIFont(name: ".SFUIDisplay-Medium", size: 19.0);
        
        view.addSubview(text);
        
        print("ViewController.genTextView(): textView added");
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        genLabel(_ view:UIView)
     *  @brief      add a label to the view
     *  @details    generate a custom textured color
     */
    /********************************************************************************************************************************/
    func genLabel(view : UIView, color : UIColor) {
        
        label.text          = "I made a label on the screen #toogood4you";
        label.font          = UIFont(name: "MarkerFelt-Thin", size: 45);
        label.textColor     = UIColor.black;
        label.textAlignment = .center;
        label.numberOfLines = 0;
        label.lineBreakMode = .byWordWrapping;
        label.frame = CGRect(x: (self.view.center.x - 150), y: 200, width: 300, height: 325);
        label.backgroundColor = UIColor(patternImage: UIImage(named: "textured")!);                 /* apply texture                */
        
        view.addSubview(label);
        
        let newView = UIView(frame: label.frame);
        newView.backgroundColor = color;
        
        view.addSubview(newView);
        view.addSubview(label);
        
        print("ViewController.genLabel():    label added");
        
        return;
    }

    
    /********************************************************************************************************************************/
    /** @fcn        applicationWillResignActive(_ notification: Notification)
     *  @brief      Tells the delegate that the app is about to become inactive
     *  @details    This method is called to let your app know that it is about to move from the active to inactive state
     *  @class      UIApplicationDelegate
     */
    /********************************************************************************************************************************/
    func applicationWillResignActive(_ notification: Notification) {
        print("I'm out of focus, home was pressed!");
        return;
    }

    
    /********************************************************************************************************************************/
    /** @fcn        didReceiveMemoryWarning()
     *  @brief      Sent to the view controller when the app receives a memory warning
     *  @details    x
     */
    /********************************************************************************************************************************/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        init?(coder aDecoder: NSCoder)
     *  @brief      backup restore initialization
     *  @details    x
     *
     *  @param      [in] (NSCoder) aDecoder - memory query device (backup access)
     */
    /********************************************************************************************************************************/
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented");
    }
}

