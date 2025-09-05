import Quickshell
import Quickshell.Services.UPower
import QtQuick

Rectangle {
    property string bateriaAtual: Quickshell.Services.UPower.percentage
    property bool validador: Quickshell.Services.UPower.isLaptopBattery
    Text {
        text: bateriaAtual
    }
}
