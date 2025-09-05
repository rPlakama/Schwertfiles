import QtQuick
import "."

Rectangle {

    color: "transparent"
    implicitWidth: 30 //The Size of the bagulho
    //Do-not-make-height-to-be-centered
    Workspaces_Geometric {
        id: workspaces
        anchors.centerIn: parent
    }
}
