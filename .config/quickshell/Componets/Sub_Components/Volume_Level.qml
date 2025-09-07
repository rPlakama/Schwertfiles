import QtQuick
import Quickshell.Services.Pipewire
import "../"

Rectangle {
    //Definition of the module size. Important! Seek Workspaces_Geometric for more complementary commentaries.
    width: 20
    height: 30
    color: "transparent"

    Text {
        // volume module, receive from Pipewire.
        anchors.centerIn: parent
        text: Qt.locale().toString(Pipewire.defaultAudioSink.audio.volume * 100, 'f', 0) + "%"
        color: Pipewire.defaultAudioSink?.audio.muted ? "#50ffffff" : "white"

        font.pointSize: fontGlobalSize
        Behavior on color {
            ColorAnimation {
                duration: 100
            }
        }
    }
}
