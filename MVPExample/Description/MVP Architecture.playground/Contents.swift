/*:
# MVP ARCHITECTURE
_ _ _ _ _ _ _ _ _

![MVPModel](MVPModel.png)


The component description becomes at the following:

View:
The view consists views and ViewControllers, with all UI setup and event
view will only passe actions and listen to the presenter updates.

Presenter:
- It will be in change of all the logic
- Responding to user actions and updating the UI (DELEGATE)
- Presenter will not be UIKit dependent

Presente will trigger the ui updates using delegates.

Model: The model role will be exactly the same

Find more information for [Medium MVP pattern](https://medium.com/@saad.eloulladi/ios-swift-mvp-architecture-pattern-a2b0c2d310a3)
 
 _ _ _ _ _ _ _ _ _

 **CURRENT APPLICATION**
 
 ![MVP](MVP.png)
 
*/
