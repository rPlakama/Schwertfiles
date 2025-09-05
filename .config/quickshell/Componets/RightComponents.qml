import QtQuick
import "./Clock.qml"

Rectangle {
    implicitHeight: 30
    radius: 5
    implicitWidth: 300
    color: "transparent"
    Rectangle {
        color: white
        border.width: 5
        radius: parent.radius
        anchors.centerIn: parent
        implicitHeight: parent.implicitHeight - 10
        implicitWidth: parent.implicitWidth - 10
    }
}
