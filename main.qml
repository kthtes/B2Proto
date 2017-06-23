import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtMultimedia 5.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("B2 Prototype - B2原型测试")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
        }

        Page {
            Label {
                text: qsTr("Second page - 第二页")
                anchors.centerIn: parent
            }
            Audio{
                id: audio1
            }
            RowLayout{
                Button{
                    text: qsTr("Play MP3 - 播放MP3")
                    onClicked: {
                        audio1.stop()
                        audio1.source='qrc:/Summer.mp3'
                        audio1.play()
                    }
                }
                Button{
                    text: qsTr("Play AAC - 播放AAC")
                    onClicked: {
                        audio1.stop()
                        audio1.source='qrc:/yin0.m4a'
                        audio1.play()
                    }
                }
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Video Test - 视频测试")
        }
        TabButton {
            text: qsTr("Audio Test - 音频测试")
        }
    }
}
