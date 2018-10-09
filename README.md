<h1 align="center"> HBCU Shop </h1> <br>

<h4 align="center">View HBCU products with an API from Etsy's ecommerce site, which can be selected to order</h4> <br>
 

## Intro

This project allows you to view products with an API from Etsy's ecommerce site onto a table view. You can then select a product to order it, which loads the Etsy item's page in an external browser. 

<p align="center">
  <img alt="onthemap" title="onthemap" src="screenshots/HBCUShop1.gif" width=300>
</p>
<br>

## Functions 

* API controllers to load products.  
* TableView controller to display products. 
* Load URL's with external browser.
<br>

## Methods on the Main Thread

An interesting part of the TableView controller was adding the item press fuction for the UI. Had to have an Objective-C call for long-press in order to add it.

``` swift
    @objc func longPress(_ longPressGestureRecognizer: UILongPressGestureRecognizer) {
        
        if longPressGestureRecognizer.state == UIGestureRecognizerState.began {
            
            let touchPoint = longPressGestureRecognizer.location(in: self.view)
            if let indexPath = tableView.indexPathForRow(at: touchPoint) {
                let urlProduct = TableViewController.urlList[indexPath.row]
                if let urlProduct = URL(string: urlProduct), UIApplication.shared.canOpenURL(urlProduct) {
                    UIApplication.shared.openURL(urlProduct)
                }
            }
        }
    }
```
<br>

## Article Tips

Some good articles for tips : <br>
* <a href="https://www.techrepublic.com/blog/software-engineer/create-your-own-web-service-for-an-ios-app-part-one/" target="_blank">Create your own web service for an iOS app - Part One</a> <br>
* <a href="https://www.hackingwithswift.com/example-code/location/how-to-add-annotations-to-mkmapview-using-mkpointannotation-and-mkpinannotationview" target="_blank">How to add annotations to MKMapView</a> <br>
* <a href="https://www.yudiz.com/working-with-unwind-segues-in-swift" target="_blank">Working with Segue unwinds in Swift</a><br>
* <a href="https://blog.supereasyapps.com/30-auto-layout-best-practices/#layout-ui-for-one-iphone" target="_blank">30 Auto Layout Best Practices</a>
