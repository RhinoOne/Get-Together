import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11

import QGTControl.Controls 1.0
import QGTControl.Controllers 1.0

Page{
    id: root
    anchors.fill: parent
    header: SectionHeader{

    }

    function checkingFieldsComplete() {
        if (login_authorization.text.length === 0 ||
            pass_authorization.text.length  === 0) {
            authorization_error_message.visible = true
            authorization_error_message.text    = qsTr("Not all fields are filled in")
            authorization_error_message.color   = qsTr("#da2828")

            return false
        }
        return true
    }

    function showAuthorizationError() {
        authorization_error_message.visible = true
        authorization_error_message.text    = qsTr("Please check your password\nand login name and try again")
        authorization_error_message.color   = qsTr("#da2828")
    }

    Connections{
        target: authorization_controller
        function onAuthorizationFailed() {
            showAuthorizationError()
        }
    }

    //Main content
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
            Layout.topMargin:       10
            ColumnLayout{
                Text{
                    text: qsTr("Login")
                    font.pixelSize: 13

                    Layout.bottomMargin: 10
                }
                TextField{
                    id: login_authorization
                    implicitHeight: 30
                    implicitWidth: 200
                    maximumLength: 5
                }
            }
        }

        RowLayout{
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin:       10
            ColumnLayout{
                Text{
                    text: qsTr("Password")
                    font.pixelSize: 13

                    Layout.bottomMargin: 10
                }
                TextField{
                    id: pass_authorization
                    echoMode: TextInput.Password

                    implicitHeight: 30
                    implicitWidth: 200
                    maximumLength: 5
                }
            }
        }
        RowLayout{
            Layout.alignment:       Qt.AlignHCenter
            Layout.topMargin:       10
            Layout.bottomMargin:    10

            Rectangle{
                implicitHeight: 25
                implicitWidth: authorization_error_message.contentWidth

                color: "transparent"

                Text{
                    id: authorization_error_message
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: 13
                    visible: false
                }
            }
        }
        RowLayout{
            Layout.alignment: Qt.AlignHCenter
            Layout.bottomMargin:    10
            Button{
                text:   qsTr("Sign in")
                implicitWidth: login_authorization.width
                onClicked: {
                    if(checkingFieldsComplete()) {
                        authorization_controller.signIn(login_authorization.text, pass_authorization.text)
                    }
                }
            }
        }
        RowLayout{
            Layout.alignment: Qt.AlignHCenter
            Layout.bottomMargin: 30
            Button{
                text:   qsTr("Help, I can't sign in")
                implicitWidth: login_authorization.width
                onClicked: {
                   main_window_loader.source = "HelperSignIn.qml"
                }
            }
        }
    }
    footer: SectionFooter{

    }
}
