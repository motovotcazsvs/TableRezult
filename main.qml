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

    Label {
        id: type_prob
        text: "Cыворотка"
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.right: tv.right
        anchors.rightMargin: 30
        font.pixelSize: 27
    }

    TableView {
        id: tv
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: type_prob.bottom
        anchors.topMargin: 30
        width: 440
        height: 670
        frameVisible: false

        Column {
            spacing: 10
            Repeater {
                model: tv.rowCount + 1
                Rectangle {
                    width: 440
                    height: 50
                    color: "grey"
                    opacity: 0.1
                }
            }
        }


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
            //border.color: "transparent"
            //border.color: "red"
            //border.color: "white"
        }
        itemDelegate: Rectangle {
            id:rec
            //anchors.topMargin: 50
            width: 150
            border.color: "transparent"
            //height: 50
            //implicitHeight: 20
            /*border {
                //color: "white"
                color: "black"
                width: 1
            }*/
/*
            Rectangle {
                width: 155
                height: 15
                //implicitHeight: 20

                border {
                    //color: "white"
                    color: "black"
                    width: 1
                }
            }
*/
            Text {
                anchors.bottom: rec.bottom
                anchors.bottomMargin: 12
                anchors.horizontalCenter: rec.horizontalCenter
                renderType: Text.NativeRendering
                color: "black"
                font.pixelSize: 22
                text: styleData.value
            }
        }
        headerDelegate: Rectangle {
            id: hedrec
            width: 120
            height: 50
            //border.color: "black"
            //border.width: 1
            //border.color: "white"
            //color: "#004242"
            color: "#A2ADD0"
            opacity: 0.6
            Text {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                text: styleData.value
                font.pixelSize: 27
                color: "black"
            }
        }

        model: theModel
    }

}

