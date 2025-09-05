import QtQuick
import "."

Rectangle {
    id: root
    implicitHeight: 30
    radius: 5
    implicitWidth: 300
    color: "transparent"

        Clock {
        id: clock 
    }

    Rectangle {

      radius: parent.radius
      color: "transparent"
        anchors.centerIn: parent
        implicitHeight: parent.implicitHeight - 10
	implicitWidth: parent.implicitWidth - 10
	//Write-modules-bellow
    }
}
