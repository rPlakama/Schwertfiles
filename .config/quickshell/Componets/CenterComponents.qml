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
        Rectangle {
            width: parent.width / 2
            height: parent.height / 2
            color: "transparent"
            anchors.centerIn: parent
            Text {
                color: "#f5f5f5"
                anchors.centerIn: parent
                font.weight: fontGlobalWeight
                font.pointSize: fontGlobalSize
                text: Qt.formatDateTime(clockComponent.date, "dddd hh:mm · dd MMMM")
            }
        }
    }
}
