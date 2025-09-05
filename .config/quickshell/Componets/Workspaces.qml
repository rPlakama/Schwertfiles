import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import Quickshell

// This component creates a row of buttons for each active Hyprland workspace.
RowLayout {
    spacing: 1 // Space between workspace buttons

    // --- Customization ---
    property color activeColor: "red"   // Color for the active workspace
    property color inactiveColor: "orange" // Color for inactive workspaces
    property color activeTextColor: "#1e1e2e"
    property color inactiveTextColor: "#d8dee9"


    // The Repeater creates a button for each item in the model.
    Repeater {
        // The model provided by Quickshell. It ONLY contains workspaces
        // that have been created, automatically giving you the desired behavior.
        model: Hyprland.workspaces

        // This is the template for each workspace button.
        Rectangle {
            id: workspaceButton

            // Use the modelData from the repeater to get info for each workspace
            readonly property bool isActive: modelData.focused
            readonly property bool isUrgent: modelData.urgent
	    property int fontSizeFocused: isActive ? 18 : 15

            width: 30
            height: 30
            radius: 1
            color: "transparent"

            // Change color based on whether the workspace is active

            Text {
                anchors.centerIn: parent
                text: modelData.id // Display the workspace ID (e.g., "1", "2")
                font.bold: true
                font.pointSize: fontSizeFocused
                color: isActive ? activeColor : inactiveColor
            }
        }
    }
}
