import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 600 //для пк
    height: 1024 //для пк

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

    TableView {

        anchors.centerIn: parent

        TableViewColumn {
            id: tvc
            title: "№"
            role: "one"
            width: 50
            horizontalAlignment: 1
        }
        TableViewColumn {title: "Gl"; role: "two"; width: 50}
        TableViewColumn {title: "Lc"; role: "three"; width: 50}
        TableViewColumn {title: "Штрих-код"; role: "fo"; width: 100}

        itemDelegate: Item {
            Rectangle {
                anchors.top: tvc.bottom
                anchors.topMargin: 10
                width: 50
                height: 20
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

        model: theModel

    }
}

