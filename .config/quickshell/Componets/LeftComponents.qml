import Quickshell.Services.Pipewire
import QtQuick
import "."
import "./Sub_Components/*"

Rectangle {
    color: "transparent"
    width: 300 // Margin of the shit ty sh twin
    height: 30

    Volume_Level {
        id: volumeLevel
    }

    Text { // volume module
        id: volumeText
        text: Qt.locale().toString(Pipewire.defaultAudioSink.audio.volume * 100, 'f', 0) + "%"
        color: "white"
        font.pointSize: fontGlobalSize
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {
        // Head of Workspaces_Geometric Module
        anchors.leftMargin: 10
        anchors.left: volumeText.right
        height: workspaces.height
        width: workspaces.width

        Workspaces_Geometric {
            id: workspaces
        }
    }
}
