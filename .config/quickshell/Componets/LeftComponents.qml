import Quickshell.Services.Pipewire
import QtQuick
import "."

Row {
    anchors.left: parent.left
    anchors.leftMargin: 10
    spacing: 5
    Workspaces_Geometric {
        id: workspaces
      }
      Rectangle {
      Text {
	text: Qt.locale().toString(Pipewire.defaultAudioSink.audio.volume * 100, 'f', 0) + "%"
	color: "white" 
      }
    }
}
