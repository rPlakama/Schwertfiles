import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.Pipewire

PanelWindow {
    id: root
    anchors.top: true

    property alias osdOpacity: rect.opacity

    function fadeOut() {
        fadeOutAnimation.start();
    }

    margins.top: 0 //height
    exclusiveZone: 0

    implicitWidth: 400
    implicitHeight: 30
    color: "transparent"

    mask: Region {}

    Rectangle {
        id: rect
        opacity: 0
        anchors.fill: parent 
        color: "#151515"
        radius: 2

        RowLayout {
            anchors {
                fill: parent
                leftMargin: 15
                rightMargin: 15
            }

            Rectangle {
                // Stretches to fill all left-over space
                Layout.fillWidth: true

                implicitHeight: 10
                radius: 2
                color: "#50ffffff"

                Rectangle {
                    anchors {
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom
                    }

                    implicitWidth: parent.width * (Pipewire.defaultAudioSink?.audio.volume ?? 0)
                    radius: parent.radius
                    color: Pipewire.defaultAudioSink?.audio.muted ? "#50ffffff" : "white"
                }
            }
        }
    }

    Component.onCompleted: {
        rect.opacity = 1;
    }

    Behavior on osdOpacity {
        NumberAnimation {
            duration: 100
        }
    }

    SequentialAnimation {
        id: fadeOutAnimation
        NumberAnimation {
            target: rect
            property: "opacity"
            to: 0
            duration: 100
        }
    }
}
