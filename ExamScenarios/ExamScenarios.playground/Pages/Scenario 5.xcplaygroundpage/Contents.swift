//: [Previous](@previous)
//: # Scenario 5
//: ## Your goal
//: Reproduce this image:
//:
//: ![Velvet Underground](VelvetUnderground.png "Velvet Underground")
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

//Create Background
canvas.drawShapesWithBorders = false
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

//Draw arrow function
func drawArrow(X: Int, Y: Int){
    canvas.translate(byX: X, byY: Y)
    
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 15, height: 45)
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 45, height: 15)
    
    canvas.rotate(by: 45)
    canvas.drawRectangle(bottomLeftX: 20, bottomLeftY: -8, width: 55, height: 15)
    canvas.rotate(by: -45)
    
    canvas.translate(byX: -X, byY: -Y)
}


for x in stride(from: 0, through: 335, by: 67){
    for y in stride(from: 0, through: 335, by: 67){
        
        if x == y {
            canvas.fillColor = Color.white
            drawArrow(X: x, Y: y)
        }else{
            canvas.fillColor = Color.init(hue: 313, saturation: 77, brightness: 65, alpha: 100)
            drawArrow(X: x, Y: y)
        }
       
    }
}


//draw lines 
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 440, width: 450, height: 2)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 560, width: 400, height: 2)

//Title
canvas.textColor = Color.white
canvas.drawText(message: "the velvet underground", size: 30, x: 15, y: 400)

//Draw top left info
canvas.drawText(message: "first appearance in london", size: 9, x: 9, y: 535)
canvas.drawText(message: "the london college of printing", size: 9, x: 10, y: 525)

//Draw the middle info
canvas.drawText(message: "with spring and pollyfloskin", size: 9, x: 150, y: 535)
canvas.drawText(message: "plus the great western light show", size: 9, x: 150, y: 525)

//Draw top right info
canvas.drawText(message: "thursday", size: 9, x: 300, y: 535)
canvas.drawText(message: "october 14 1971/8pm", size: 9, x: 300, y: 525)
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
