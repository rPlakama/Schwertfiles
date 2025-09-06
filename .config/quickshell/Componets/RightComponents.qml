import QtQuick
import "."

Row {
    anchors.right: parent.right
    anchors.rightMargin: 10
    spacing: 5

    Battery {
        id: batterylevel
    }
}
