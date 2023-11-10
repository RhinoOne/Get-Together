import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11

import QGTControl.Controls 1.0

Page{
    id: root
    anchors.fill: parent
    header: SectionHeader{

    }
    GridLayout{
        rows: 1
        columns:3

        RowLayout{
            Layout.fillHeight:  true
            Layout.fillWidth:   true
            Layout.columnSpan: 3
            Layout.margins:     15

            Button{
                text: qsTr("text")
            }
        }
    }
    footer: SectionFooter{

    }
}
