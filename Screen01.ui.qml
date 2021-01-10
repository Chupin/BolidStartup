import QtQuick 2.12
import Startup 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#4facfe"
    radius: 30

    gradient: Gradient {
        GradientStop {
            position: 0
            color: "#4facfe"
        }

        GradientStop {
            position: 1
            color: "#00f2fe"
        }
    }

    Text {
        id: txtTitle
        color: "#ffffff"
        text: qsTr("BOLID")
        font.pixelSize: 48
        font.bold: true
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 8
    }

    Text {
        id: txtSubtitle
        color: "#ffffff"
        text: qsTr("Workgroud")
        font.pixelSize: 36
        anchors.top: txtTitle.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 6
        font.bold: false
    }

    Brief {
        id: briefConnect
        width: 300
        anchors.left: parent.left
        anchors.leftMargin: Constants.margin
        anchors.bottom: parent.bottom
        anchors.bottomMargin: Constants.margin
        title: "Connect\nto master"
        brief: "Configure ARR\nand connected devices"
    }

    Brief {
        id: briefEdit
        width: 300
        anchors.left: briefConnect.right
        anchors.leftMargin: Constants.margin
        anchors.bottom: parent.bottom
        anchors.bottomMargin: Constants.margin
        title: "Edit\nconfiguration file"
        brief: "Edit\nconfiguration file"
        imgPath: "images/edit.png"
    }

    Brief {
        id: briefView
        width: 300
        anchors.right: briefWave.left
        anchors.rightMargin: Constants.margin
        anchors.bottom: parent.bottom
        anchors.bottomMargin: Constants.margin
        title: "View\nconfiguration file"
        brief: "View\nconfiguration file"
        imgPath: "images/view.png"
    }

    Brief {
        id: briefWave
        width: 300
        anchors.right: parent.right
        anchors.rightMargin: Constants.margin
        anchors.bottom: parent.bottom
        anchors.bottomMargin: Constants.margin
        title: "Noise"
        brief: "View noise environment"
        imgPath: "images/wave.png"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/

