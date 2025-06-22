import QtQuick 
import Quickshell.Services.UPower
import "../Bar.qml"

Text {
text: ("%00%").arg(Math.round(UPower.displayDevice.percentage * 100))
color: textHighlight 
font.pixelSize: fontSize
font.family: fontFamily

}

