import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Rectangle {
    RowLayout {
        spacing: 1

        Repeater {

            model: Hyprland.workspaces

            Rectangle {
                id: workspaceButton

                readonly property bool isFocused: modelData.focused
                property color focusedColor: "white"
                property color unfocusedColor: "gray"

                width: 20
                height: 30
                radius: 1
                color: "transparent"

                Text {
                    anchors.centerIn: parent
                    text: modelData.id
                    color: isFocused ? focusedColor : unfocusedColor
                    Behavior on color {
                        ColorAnimation {
                            duration: 90
                        }
                    }
                    font.pointSize: fontGlobalSize
                    font.weight: fontGlobalWeight
                }
            }
        }
    }
}
