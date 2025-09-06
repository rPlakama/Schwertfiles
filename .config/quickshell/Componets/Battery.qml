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
        text: Qt.locale().toString(percentage * 100, 'f', 0) + "%"
        anchors.centerIn: parent
        color: "white"
        font.pointSize: fontGlobalSize
        font.weight: fontGlobalWeight
    }
}
