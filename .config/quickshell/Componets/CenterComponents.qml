import Quickshell
import QtQuick
import "."

Rectangle {
    id: root
    implicitHeight: 30
    implicitWidth: 300
    color: "transparent"

    Clock {
        id: clockComponent
    }

    Rectangle {
        color: "transparent"
        anchors.centerIn: parent
        implicitHeight: parent.implicitHeight - 10
        implicitWidth: parent.implicitWidth - 10
        //Write-modules-bellow
        Text {
            text: Qt.formatDateTime(clockComponent.date, "ddd, dd. MMM hh:mm")
            color: "#f5f5f5"
	    anchors.centerIn: parent
	    font.weight: fontGlobalWeight
	    font.pointSize: fontGlobalSize
        }
    }
}
