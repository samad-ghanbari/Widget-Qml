import QtQuick
import QtQuick.Controls.Basic

Page {
    id: appLoginForm

    anchors.fill: parent

    function loginBtnClicked()
    {
        incorrectUserPassTxt.text ="";
        backgroundAnimId.start()
        var username = usernameField.text
        var password = passwordField.text
        if( (username === "") || (password === ""))
        {
            incorrectUserPassTxt.text = "نام‌کاربری و پسورد الزامی می‌باشد."
            incorrectuserPassAnim.start()
            return;
        }

        console.log(myClass.getNumber(25));
    }

    Image {
        id: backimageId
        source: "qrc:/back.jpg"
        anchors.fill: parent
        opacity: 1
    }

    SequentialAnimation
    {
        id: backgroundAnimId

        PropertyAnimation {
            target: loginFormRecId
            property: "color"
            duration: 200
            easing.type: Easing.InOutQuad
            from: "#88DDCCFF"
            to: "#3300FF00"
        }

        PropertyAnimation {
            target: loginFormRecId
            property: "color"
            duration: 200
            easing.type: Easing.InOutQuad
            from: "#3300FF00"
            to: "#88DDCCFF"
        }
    }

    Rectangle
    {
        id: loginFormRecId
        width: 400; // parent.width
        height:  400; //Qt.binding(function(){ return loginFormColumnId.height+100;})
        anchors.centerIn: parent
        color: "#88DDCCFF"
        radius: 5
        border.width: 1
        border.color: "#555"


        Column
        {
            id: loginFormColumnId
            width: 300
            height: 300
            visible: true
            anchors.centerIn: parent

            Item{height:10;width:parent.width}

            Text{
                id: loginTextId
                width: parent.width
                height: 40
                text: "ورود به سامانه"
                color: "#FFF"
                font.bold: true
                font.pixelSize: 20

                horizontalAlignment:  Text.AlignHCenter
            }

            TextField
            {
                id: usernameField
                height: 50
                width : parent.width
                placeholderText: "کد ملی"
            }

            TextField
            {
                id: passwordField
                height: 50
                width : parent.width
                placeholderText: "رمز عبور"
                echoMode: "Password"
            }

            Item{height:10;width:parent.width}

            Row
            {
                width: parent.width
                Button {
                    id: closeBtnId
                    text: "Cancel"
                    height: 50
                    width : parent.width/2

                    //anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle {
                        id: cancelBtnId
                        implicitWidth: 100
                        implicitHeight: 50
                        color: closeBtnId.down ? "#FAA" : "#FEE"
                        border.width: 1
                        border.color:"#f99"
                    }
                    onClicked:
                    {
                        backgroundAnimId.start()
                        myClass.close();
                    }
                    hoverEnabled: true
                    onHoveredChanged: cancelBtnId.color= hovered? "#fde"  : "#fee";

                }
                Button {
                    id: button
                    text: "Login"
                    height: 50
                    width : parent.width/2
                    focus: true
                    Keys.onEnterPressed: {loginBtnClicked();}

                    //anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle {
                        id:loginBtnId
                        implicitWidth: 100
                        implicitHeight: 50
                        color: button.down ? "#3858ff" : "#77bbf7"
                        border.width: 1
                        border.color:"#88F"
                    }
                    onClicked:
                    {
                        loginBtnClicked();
                    }
                    hoverEnabled: true
                    onHoveredChanged: loginBtnId.color= hovered? "#77aaf7"  : "#77bbf7";

                }

            }

            Item{height:10;width:parent.width}
            Text {
                id: versiontxt
                text: "Version " + myClass.getVersion();
                color: "gray"
            }
            Item{height:5;width:parent.width}
            Text {
                id: incorrectUserPassTxt
                text: ""
                color:"mediumvioletred"
                font.pixelSize: 18
                anchors.horizontalCenter: parent.horizontalCenter
                ScaleAnimator on scale {
                        id: incorrectuserPassAnim
                        from: 1.5;
                        to: 1;
                        duration: 1000
                        running: false
                    }
            }
        }
    }
}
