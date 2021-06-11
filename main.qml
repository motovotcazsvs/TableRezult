import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import TableModel 0.1


Window {
    visible: true
    width: 600 //для пк
    height: 1024 //для пк

    TableModel{
        id: theModel
    }

    TableView {
        anchors.centerIn: parent
        //rowSpacing: 1
        width: 500
        height: 720
        TableViewColumn {
            id: tvc
            title: "№"
            role: "one"
            width: 70
            //horizontalAlignment: 1
            //visible: false

        }
        TableViewColumn {title: "Gl"; role: "two"; width: 100}
        TableViewColumn {title: "Lc"; role: "three"; width: 100}
        TableViewColumn {
            title: "Штрих-код"
            role: "fo"
            width: 155
           //horizontalAlignment: 2
        }
        rowDelegate: Rectangle{
            id: r
            //z: -1
            //width: 150
            height: 60
            //anchors.topMargin: 10
            border.color: "transparent"

            Rectangle {
                id: r2
                height: 15
                anchors.top: r.top
                z: 1
                border.color: "red"
            }
            Rectangle {
                id: r3
                height: 45
                border.color: "black"
            }


        }//
        itemDelegate: Rectangle {
            id:rec
            //anchors.topMargin: 50
            width: 150
            //height: 50
            //implicitHeight: 20
            /*border {
                //color: "white"
                color: "black"
                width: 1
            }*/
            Rectangle {
                width: 155
                height: 15
                //implicitHeight: 20
                /*
                border {
                    color: "white"
                    //color: "black"
                    width: 1
                }*/
            }

            Text {
                anchors.bottom: rec.bottom
                anchors.horizontalCenter: rec.horizontalCenter
                renderType: Text.NativeRendering
                font.pixelSize: 22
                text: styleData.value
            }
        }
        headerDelegate: Rectangle {
            width: 120
            height: 50
            //border.color: "black"
            border.color: "white"
            Text {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                text: styleData.value
                font.pixelSize: 27
                color: "#666666"
            }
        }
        model: theModel
    }
}

