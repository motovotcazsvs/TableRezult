import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

import TableModel 0.1
Window {
    visible: true
    width: 600 //для пк
    height: 1024 //для пк

    TableModel{
            id:theModel
        }

/*
    TableView {
        id: tableView
        anchors.top: row.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 5

        TableViewColumn {
            role: "id"
            title: "ID"
            delegate: Rectangle {

                border {
                    color: "black"
                    width: 1
                }
                Text {
                    anchors.centerIn: parent
                    renderType: Text.NativeRendering
                    text: styleData.value
                }
            }
        }
        TableViewColumn {
            role: "number_per_day"
            title: "№ за день"
        }
        TableViewColumn {
            role: "probe_number"
            title: "№ пробника"
        }
        TableViewColumn {
            role: "date_year"
            title: "год"
        }
        TableViewColumn {
            role: "date_month"
            title: "месяц"
        }
        TableViewColumn {
            role: "date_day"
            title: "день"
        }
        TableViewColumn {
            role: "time_hour"
            title: "часы"
        }
        TableViewColumn {
            role: "time_minute"
            title: "минуты"
        }
        TableViewColumn {
            role: "gl_Role"
            title: "глюкоза"
        }
        TableViewColumn {
            role: "lc_Role"
            title: "лактата"
        }
        TableViewColumn {
            role: "bar_code"
            title: "штрих-код"
        }

        itemDelegate: Item {
            Text {
                anchors.centerIn: parent
                renderType: Text.NativeRendering
                text: styleData.value
            }
            Rectangle {
                width: 50
                height: 50
                border {
                    color: "black"
                    width: 1
                }
            }
        }
        model: myModel
    }
    */


    TableView{
        anchors.centerIn: parent
        //rowSpacing: 1
        width: 500
        height: 600
        TableViewColumn {
            id: tvc
            title: "№"
            role: "one"
            width: 100
            //horizontalAlignment: 1
            //visible: false
        }
        TableViewColumn {title: "Gl"; role: "two"; width: 100}
        TableViewColumn {title: "Lc"; role: "three"; width: 100}
        TableViewColumn {
            title: "Штрих-код"
            role: "fo"
            width: 110
           //horizontalAlignment: 2
        }

        itemDelegate:
            Rectangle {
                id:rec
                anchors.topMargin: 10
                width: 110
                //height: 50
                implicitHeight: 50

                border {
                    //color: "white"
                    color: "black"
                    width: 1
                }

                Text {
                    anchors.centerIn: rec
                    renderType: Text.NativeRendering
                    font.pixelSize: 16
                    text: styleData.value
                }

        }


        headerDelegate:
            Rectangle{
            width: 110
            height: 40
            border.color: "black"
            Text
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                text: styleData.value
                font.pixelSize: 20
                color: "#666666"
            }
        }

        model: theModel



    }

}

