//: [Previous](@previous)
//: # Scenario 5
//: ## Your goal
//: Reproduce this image:
//:
//: ![Velocity Girl](VelocityGirl.png "Velocity Girl")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)


// Draw background
canvas.drawShapesWithBorders = false
canvas.fillColor = Color(hue: 87, saturation: 6, brightness: 88, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

//Draw Square pattern
for x in stride(from: -50, to: 450, by: 100){
    for y in stride(from: -75, to: 425, by: 100) {
        
        
        if y - x == -25 || x + y == 275 && x > 200 {
            canvas.fillColor = Color.init(hue: 37, saturation: 93, brightness: 98, alpha: 100)
        }
            
        else {
            canvas.fillColor = Color.init(hue: 326, saturation: 99, brightness: 93, alpha: 100)
        }
        
        canvas.drawRoundedRectangle(bottomLeftX: x, bottomLeftY: y, width: 95, height: 95)
        
    }
}

// Clear overlaw
for x in stride(from: -75, to: 425, by: 100){
    for y in stride(from: 0, to: 400, by: 100)
        
    {
        canvas.fillColor = Color.init(hue: 240, saturation: 80, brightness: 50, alpha: 50)
        
        canvas.drawRoundedRectangle(bottomLeftX: x, bottomLeftY: y, width: 95, height: 95)
        
    }
}


// Draw stupid info at the top

//Title
canvas.textColor = Color.black
canvas.drawText(message: "velocity girl", size: 45, x: 10, y: 425)

//draw left info
canvas.drawText(message: "at the tavern", size: 9, x: 10, y: 500)
canvas.drawText(message: "american university / washington, dc", size: 9, x: 10, y: 490)

//draw top right info
canvas.drawText(message: "friday", size: 9, x: 275, y: 570)
canvas.drawText(message: "september 23 1994 / 8pm", size: 9, x: 275, y: 560)

//draw right info
canvas.drawText(message: "with special guest", size: 12, x: 275, y: 445)
canvas.drawText(message: "sunny day real estate", size: 12, x: 275 , y: 430)
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
