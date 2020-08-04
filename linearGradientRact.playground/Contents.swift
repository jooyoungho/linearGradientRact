import UIKit


let artBoardWidth = 210
let artBoardHeight = 297
let NumberOfElements = 3000
var rects:String = ""

var noise:Int {
    return Int.random(in: 1...297)
}
var element:(Int,Int) {
    return (noise, noise)
}

for _ in 0..<NumberOfElements {
    rects += "<rect x='\(noise)' y='\(noise)' width='\(noise / 100)' height='\(noise / 100)' class='st0'/>"
}

var output = """
<?xml version="1.0" encoding="utf-8"?>
<svg version="1.1" id="creative_joo" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
     y="0px" viewBox="0 0 210 297" style="enable-background:new 0 0 210 297;" xml:space="preserve">
<style>
    .st0{fill:url(#SVGID_1_);}
</style>
<linearGradient id="SVGID_1_" gradientUnits="userSpaceOnUse" x1="0.927" y1="38.5328" x2="75.7445" y2="38.5328">
    <stop  offset="0" style="stop-color:#FFFFFF"/>
    <stop  offset="1" style="stop-color:#000000"/>
</linearGradient>
\(rects)
</svg>
"""

print(output)
