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
        id: mainWindowLoader
        anchors.fill: parent
    }

    Component.onCompleted: {
        if(!isAuthorized){
            mainWindowLoader.source = "Authorization.qml"
        }
    }
}
