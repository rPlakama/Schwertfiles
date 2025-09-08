import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Rectangle {
    // A more suitable size for the container
    width: 150
    height: 30
    color: "transparent"
    radius: 8
    clip: true

    RowLayout {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
        spacing: 5

        Repeater {
            model: Hyprland.workspaces

            Rectangle {
                id: workspaceButton

                readonly property bool isFocused: modelData.focused
                readonly property bool isUrgent: modelData.urgent
                readonly property bool isSpecial: modelData.id <= 0

                property color colorSpecial: "#6fc2ef"
                property color colorUrgent: "#eda987"
                property color focusedColor: "white"
                property color unfocusedColor: "gray"

                width: 8
                height: 8
                radius: 4
                visible: modelData.id

                color: isUrgent ? colorUrgent : (isSpecial ? colorSpecial : (isFocused ? focusedColor : unfocusedColor))
                Behavior on color {
                    ColorAnimation {
                        duration: 100
                    }
                }
            }
        }
    }
}
