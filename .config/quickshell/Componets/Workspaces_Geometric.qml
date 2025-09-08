import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Rectangle {

    width: 150
    height: 30
    color: "transparent"
    radius: 8
    clip: true

    RowLayout {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
        spacing: 14

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

                visible: modelData.id
                Rectangle {

                    color: colorSpecial
                    width: 8
                    height: 8
                    radius: 4
                    anchors.centerIn: parent
                    visible: modelData.id <= 0
                }

                Behavior on color {
                    ColorAnimation {
                        duration: 100
                    }
                }
                Text {
                    text: modelData.id
                    visible: modelData.id > 0
                    anchors.centerIn: parent
                    color: isUrgent ? colorUrgent : (isSpecial ? colorSpecial : (isFocused ? focusedColor : unfocusedColor))
                    //Eu sei que você vai esquecer, rPlakama. Basicamente: Se é urgente? Vai ser cor de urgente, se não for urgente, vai ser especial, e se não for especial, vai voltar para o IsFocused e não focused. E se não for nenhum desses dai? DESISTA DOS SEUS SONHOS, E MORRA!

                    Behavior on color {
                        ColorAnimation {
                            duration: 100
                        }
                    }
                }
            }
        }
    }
}
