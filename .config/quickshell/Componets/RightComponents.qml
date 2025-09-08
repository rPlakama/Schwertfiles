import QtQuick
import "."

Rectangle {
    //Totalsizeofmodule
    color: "transparent"
    height: 30
    width: 300
    Rectangle {
        width: parent.width - (parent.width * 0.10)
        color: "transparent"
        height: parent.height
        anchors.centerIn: parent
        Row {
            spacing: 5
            anchors.right: parent.right

            Battery {
                id: batterylevel
            }
            Tray {
                id: tray
            }
        }
    }
}
