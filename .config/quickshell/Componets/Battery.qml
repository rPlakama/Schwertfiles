import QtQuick
import Quickshell
import Quickshell.Services.UPower
import "."

Rectangle {
    property real percentage: UPower.displayDevice.percentage
    color: "transparent"
    height: 30
    width: 30
    Text {
        text: (percentage * 100) + "%"
        anchors.centerIn: parent
        color: "white"
        font.pointSize: fontGlobalSize
        font.weight: fontGlobalWeight
    }
}
