import Quickshell
import Quickshell.Io
import QtQuick
import "./*"

Scope {

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData
            color: "#D9151515" //MainBackground

            anchors {
                top: true
                left: true
                right: true
            }
            implicitHeight: 30

            //Main_bar
            RightComponents {
                anchors.right: parent
            }
            CenterComponents {
                anchors.centerIn: parent
            }
        }
    }
}
