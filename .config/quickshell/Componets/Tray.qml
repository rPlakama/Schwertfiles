import QtQuick
import Quickshell
import Quickshell.Services.SystemTray

Row {
    // Add this Component.onCompleted block

    spacing: 4

    Repeater {
        model: SystemTray.items
        property string isModel: model.items[3]
    }
}
