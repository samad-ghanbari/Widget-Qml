import QtQuick
import QtQuick.Controls

Rectangle {

   anchors.fill: parent
   color: "azure"

    Text {
        id: txtId
        text: qsTr("QML Text")
        font.pixelSize:  24
        //anchors.horizontalCenter: parent.horizontalCenter
        anchors.centerIn: parent
        color : "blue"

        ScaleAnimator on scale {
                from: 0.5;
                to: 2;
                duration: 1000
            }

        PropertyAnimation on color {
            from : "blue"
            to : "darkmagenta"
            duration:  1000
        }
    }
}
