import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.11

ApplicationWindow {
    id: root
    property bool isAuthorized: false
    width: 480
    height: 500
    visible: true
    title: qsTr("Get Together")

    Loader{
        id: main_window_loader
        anchors.fill: parent
    }

    Component.onCompleted: {
        if(!isAuthorized){
            main_window_loader.source = "Authorization.qml"
        }
    }
}
