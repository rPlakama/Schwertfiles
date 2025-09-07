import QtQuick
import QtQuick.Layouts
import "."
import "./Sub_Components"

Rectangle {
    //The leftCompoents total size
    color: "transparent" // Debug paramenter
    height: 30
    width: 300

    Rectangle {
        //Main-Head
        //It comes after the Rectangle, it defines the stuff >>Inside<< the module. Also, it can be used for the color or extra layers. Good to have, but can be removed.
        width: parent.width - (parent.width * 0.10)
        color: "transparent" //Debug paramenter
        height: parent.height
        anchors.centerIn: parent
        RowLayout {

            spacing: 2 //Spacing of the modules

            Volume_Level {}
            Workspaces_Geometric {}
        }
    }
}
