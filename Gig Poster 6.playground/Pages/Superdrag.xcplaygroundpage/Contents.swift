//: # Gig Poster 6
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![superdrag-no-grid](superdrag-no-grid.png "Talking Heads")
 ![superdrag-with-grid](superdrag-with-grid.png "Talking Heads")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * use of arithmetic operators in expressions
 * functions
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 1:00 PM on Friday, March 6, 2020.
 
 Good luck! You've got this! 👊🏻👊🏼👊🏽👊🏾👊🏿
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightBlue = Color(hue: 193, saturation: 100, brightness: 86, alpha: 100)
let offWhite = Color(hue: 85, saturation: 8, brightness: 88, alpha: 100)
let translucentPink = Color(hue: 325, saturation: 100, brightness: 81, alpha: 75)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...
// Make background Colour
canvas.fillColor = lightBlue
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Make circles only border
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true

// Default border width for all circles
canvas.defaultBorderWidth = 400/34

// Draw the white circles
canvas.borderColor = offWhite
var length = 12

for _ in 1...9 {
    
        canvas.drawEllipse(at: Point(x: 200, y: 400), width: length, height: length)
    
    length += 47
}

// Draw the pink circles
canvas.borderColor = translucentPink
length = 12

for _ in 1...9 {
    
        canvas.drawEllipse(at: Point(x: 200, y: 500), width: length, height: length)
    
    length += 47
}

// Draw title

canvas.drawText(message: "superdrag", at: Point(x: 20, y: 90), size: 50, kerning: 1.0)


/*:
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 1:00 PM on Friday, March 6, 2020.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas
