import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.Pipewire

Scope {
    id: root

    // Bind the pipewire node so its volume will be tracked
    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink]
    }

    Connections {
        target: Pipewire.defaultAudioSink?.audio

        function onVolumeChanged() {
            root.shouldShowOsd = true;
            hideTimer.restart();
        }
    }

    property bool shouldShowOsd: false

    Timer {
        id: hideTimer
        interval: 1000
        onTriggered: {
            if (loader.item) {
                loader.item.fadeOut();
                deactivateTimer.start();
            }
        }
    }

    Timer {
        id: deactivateTimer
        interval: 50
        onTriggered: root.shouldShowOsd = false
    }

    LazyLoader {
        id: loader
        active: root.shouldShowOsd
        source: "Componets/VolumeOsd.qml"
    }
}
