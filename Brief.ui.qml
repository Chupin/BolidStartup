import QtQuick 2.12

Rectangle {
    id: rectangle
    property string title: "Title"
    property string brief: "Brief"
    property string imgPath: "images/usb.png"
    width: 300
    height: 300
    color: "#3090ff"
    radius: 50

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: color = "#6090ff"
        onExited: color = "#3090ff"
        onPressed: color = "#9090ff"
        onReleased: color = "#6090ff"
    }

    Text {
        id: txtTitle
        color: "#ffffff"
        text: title
        font.pixelSize: 24
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
            topMargin: 8
        }
    }

    Text {
        id: txtBrief
        color: "#ffffff"
        text: brief
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        anchors {
            top: txtTitle.bottom
            horizontalCenter: parent.horizontalCenter
            topMargin: 6
        }
    }

    Image {
        id: image
        width: 100
        height: 100
        source: imgPath
        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
            bottomMargin: 8
        }
        fillMode: Image.PreserveAspectFit
    }
}
