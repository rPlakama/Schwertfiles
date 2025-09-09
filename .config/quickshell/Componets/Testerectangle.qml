import QtQuick

Rectangle {
  id: root

  width: clockText.width
  height: clockText.height
  color: "transparent"

  StyledText {
    id: clockText

    anchors.centerIn: parent
    font.weight: 700

    text: Time.time
  }
}
