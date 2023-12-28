import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.11

import QGTControl.Controllers 1.0

ApplicationWindow {
    id: root

    width: 480
    height: 500
    visible: true
    title: qsTr("Get Together")

    AuthorizationController{
        id: authorization_controller
    }

    Loader{
        id: main_window_loader
        anchors.fill: parent
    }

    Connections{
        target: authorization_controller
        function onAuthorizationSuccessfully() {
            main_window_loader.source = "MainContentWindow.qml"
        }
    }

    Component.onCompleted: {
        if(!authorization_controller.isAuthorized){
            main_window_loader.source = "Authorization.qml"
        }
    }
}
