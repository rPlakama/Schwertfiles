import QtQuick
import QtQuick.Layouts
import Quickshell.Services.SystemTray
import Quickshell.Widgets

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
                //Size of Icon
                Layout.preferredWidth: 20
                Layout.preferredHeight: 20

                source: modelData.icon

                visible: checkedIconPath
            }
        }
    }
}
