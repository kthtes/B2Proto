import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtMultimedia 5.5

Item {
    property alias textField1: textField1
    property alias button1: button1
    property alias video1: video1

    Video{
        id: video1
        anchors.fill: parent
        fillMode: VideoOutput.PreserveAspectFit
        source: 'qrc:/m_ending.m4v'
        autoLoad: true
        autoPlay: false
    }

    RowLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        anchors.top: parent.top

        TextField {
            id: textField1
            placeholderText: qsTr("Press the button to play video")
        }

        Button {
            id: button1
            text: qsTr("Press Me")
        }
    }

}
