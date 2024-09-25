import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic



Page {

   anchors.fill: parent
   focus: true

   //color: "azure"

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


    TextField
    {
        id: nameId
        placeholderText: "username"
        text: "samad"
        anchors.top: txtId.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button
    {
        id: btnId
        text: "click me"
        onClicked:
        {
            console.log("clicked")
            console.log(myClass.getNumber(20))
            var name = nameId.text
            console.log(name)
            //myClass.close();
        }
        anchors.topMargin: 20
        anchors.top: nameId.bottom
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Text
    {
        id: txtInputId
        text: "hello"
        anchors.top: btnId.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        MouseArea
        {
            anchors.fill: parent
            onClicked: {console.log("Text Clicked")}
        }
    }



}
