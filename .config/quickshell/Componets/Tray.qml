import QtQuick
import Quickshell
import QtQuick.Layouts
import Quickshell.Services.SystemTray
import Quickshell.Widgets
import "."

Rectangle {
    id: trayContainer

    width: trayIconsLayout.implicitWidth + (visible ? 8 : 0)
    visible: trayIconsLayout.implicitWidth > 0

    height: 30
    color: "transparent"
    radius: 8
    clip: true

    Behavior on width {
        NumberAnimation {
            duration: 200
        }
    }

    RowLayout {
        id: trayIconsLayout
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 4
        anchors.right: parent.right
        anchors.rightMargin: 4
        spacing: 8

        Repeater {
            model: SystemTray.items
            IconImage {
                id: trayIcon
                Layout.preferredWidth: 22
                Layout.preferredHeight: 22

                source: modelData.icon

                visible: checkedIconPath
            }
        }
    }
}
