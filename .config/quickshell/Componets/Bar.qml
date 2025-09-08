import Quickshell
import QtQuick
import "."

Scope {

    property int fontGlobalWeight: 500
    property int fontGlobalSize: 10

    Variants {
        model: Quickshell.screens

        PanelWindow {

            required property var modelData
            screen: modelData
            color: "transparent"

            anchors {
                top: false
                bottom: true
                left: true
                right: true
            }
            implicitHeight: 30

            margins {
                top: 2
                bottom: 2
                right: 2
                left: 2
            }
            Rectangle {
                color: "#151515" //MainBackground
                width: parent.width
                height: parent.height
                radius: 2

                //Main_bar
                LeftComponents {
                    anchors.left: parent.left
                }
                RightComponents {
                    anchors.right: parent.right
                }
                CenterComponents {
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
