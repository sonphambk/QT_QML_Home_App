import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Controls

import SmartHome 1.0

ApplicationWindow {
    id: root
    width: 1440
    height: 1042
    visible: true
    title: qsTr("Smart Home App")

    background: Image {
        id: background
        anchors.fill: parent
        source: "qrc:/assets/Cover.png"
        FPSText {
            id: fps_text
        }
    }

    contentData: Loader {
        id: screenLoader
        // anchors.topMargin: topPane.topPadding * 2
        anchors.fill: parent
        sourceComponent: mainArea
    }

    Component {
        id: mainArea
        MainArea {

        }
    }

    // Component {
    //     id: home
    //     Home {

    //     }
    // }

    // Component {
    //     id: kitchen
    //     Kitchen {

    //     }
    // }

    // Component {
    //     id: bedroom
    //     Bedroom {

    //     }
    // }

    // Component {
    //     id: laundary
    //     Laundary {

    //     }
    // }
}
