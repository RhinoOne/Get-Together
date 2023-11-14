import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11

import QGTControl.Controls 1.0

Page{
    id: root
    anchors.fill: parent
    header: SectionHeader{

    }
    //Main content
    Loader{
        id: loader_helper
        anchors.fill: parent
        sourceComponent: authorization_content
    }
    Component{
        id: authorization_content
        ColumnLayout{
            anchors.fill: parent

            anchors.leftMargin:     10
            anchors.rightMargin:    10
            anchors.topMargin:      15
            anchors.bottomMargin:   15

            RowLayout{
                Layout.alignment: Qt.AlignHCenter
                Text{
                    text: qsTr("Authorization")
                    font.pixelSize: 15
                }
            }

            RowLayout{
                Layout.alignment: Qt.AlignHCenter
                ColumnLayout{
                    Text{
                        text: qsTr("Login")
                        font.pixelSize: 13

                        Layout.bottomMargin: 10
                    }
                    TextField{
                        id: login_authorization
                    }
                }
            }

            RowLayout{
                Layout.alignment: Qt.AlignHCenter
                ColumnLayout{
                    Text{
                        text: qsTr("Password")
                        font.pixelSize: 13

                        Layout.bottomMargin: 10
                    }
                    TextField{
                        id: pass_authorization
                        echoMode: TextInput.Password
                    }
                }
            }

            RowLayout{
                Layout.alignment: Qt.AlignHCenter
                Button{
                    text:   qsTr("Sign in")
                }
            }
            RowLayout{
                Layout.alignment: Qt.AlignHCenter
                Layout.bottomMargin: 20
                Button{
                    text:   qsTr("Help, I can't sign in")
                    onClicked: {
                       loader_helper.source = "HelperSignIn.qml"
                    }
                }
            }
        }
    }
    footer: SectionFooter{

    }
}
