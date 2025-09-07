import QtQuick
import Quickshell.Services.Pipewire
import "../*"

Rectangle {
    Text { // volume module
        id: volumeText
        text: Qt.locale().toString(Pipewire.defaultAudioSink.audio.volume * 100, 'f', 0) + "%"
        color: "white"
        font.pointSize: fontGlobalSize
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
    }
}
