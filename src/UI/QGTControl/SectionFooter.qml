import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.11

Rectangle{
    id: root
    implicitHeight: 60

    GridLayout{
        rows: 1
        columns: 3

        RowLayout{
            Layout.leftMargin: 15
            Layout.rightMargin: 15
            Layout.topMargin: 10
            Layout.bottomMargin: 10

            Layout.column: 0

            Text{
                text: qsTr("Footer")
            }
        }
    }
}
