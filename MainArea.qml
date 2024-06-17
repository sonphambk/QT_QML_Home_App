import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Controls

import SmartHome 1.0
import "components"

Page {
    padding: 0
    background: null

    footer: RowLayout {
        Layout.fillWidth: true
        width: parent.width
        height: 600
        Item {
            Layout.preferredWidth: 50
        }

        Rectangle {
            width: 325
            height: 500
            color: Style.alphaColor("#000000",0.5)
            border.color: Style.alphaColor("#FFFFFF",0.25)
            radius: 24

            ColumnLayout {
                width: parent.width
                anchors {
                    left: parent.left
                    right: parent.right
                    top: parent.top
                    bottom: parent.bottom
                    topMargin: 20
                    bottomMargin: 20
                    leftMargin: 20
                    rightMargin: 20
                }
                RowLayout {
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Air Conditioner")
                    }

                    PrefsSwitch{
                        checked: true
                    }
                }
                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        font.pixelSize: 28
                        text: qsTr("18 °C")
                    }

                    OutlinedLabel {
                        backgroundHeight: 42
                        backgroundWidth: 42
                        radius: 8
                        iconSize: 32
                        icon: '\uf0d8' //caret-up
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        onClicked: {}
                    }
                }

                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        color: Style.alphaColor("#FFFFFF",0.25)
                        text: qsTr("Current temperature")
                    }

                    OutlinedLabel {
                        backgroundHeight: 42
                        backgroundWidth: 42
                        radius: 8
                        iconSize: 32
                        icon: '\uf0d7' //caret-down
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        onClicked: {}
                    }

                }

                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Mode")
                    }

                    OutlinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "Cold"
                    }
                }

                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Auto turn on")
                    }

                    OutlinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "10:00 PM"
                    }
                }

                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Auto turn off")
                    }

                    OutlinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "4:00 AM"
                    }
                }

                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Wind")
                    }

                    OutlinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "Medium"
                    }
                }
            }
        }
    }
}
