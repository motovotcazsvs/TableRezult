import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import TableModel 0.1


Item {
    id: root
    anchors.fill: parent
    
    TableModel{
        id: theModel
    }
    
    Label {
        id: type_prob
        text: qsTr("Cыворотка")
        anchors.top: root.top
        anchors.topMargin: 50
        anchors.right: tv.right
        anchors.rightMargin: 20
        font.pixelSize: 27
    }
    
    TableView {
        id: tv
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: type_prob.bottom
        anchors.topMargin: 10
        width: 500
        height: 800
        frameVisible: false
        
        Column {
            spacing: 12

            Rectangle {
                id: hed
                width: 500
                height: 60
                radius: 20
                color: "#A2ADD0"
                opacity: 0.4
            }
            
            Repeater {
                id:repeater
                model: tv.rowCount
                
                Rectangle {
                    id: rowRec
                    width: 500
                    height: 60
                    radius: 20
                    color: "grey"
                    opacity: 0.2
                                       
                    Rectangle {
                        id: vert_lin1
                        width: 7
                        height: rowRec.height
                        color: "white"
                        x: col1.width - (width / 2)
                    }
                    
                    Rectangle {
                        id: vert_lin2
                        width: 7
                        color: "white"
                        height: rowRec.height
                        x: (col1.width + col2.width) - (width / 2)
                    }
                    
                    Rectangle {
                        id: vert_lin3
                        width: 7
                        color: "white"
                        height: rowRec.height
                        x: (col1.width + col2.width + col3.width) - (width / 2)
                    }
                    
                }
            }
        }
             
        TableViewColumn {id: col1; title: qsTr("№"); role: "one"; width: 80}
        TableViewColumn {id: col2; title: qsTr("Gl"); role: "two"; width: 115}
        TableViewColumn {id: col3; title: qsTr("Lc"); role: "three"; width: 115}
        TableViewColumn {id: col4; title: qsTr("Штрих-код"); role: "fo"; width: 188}

        rowDelegate: Rectangle {
            id: r
            height: 72
        }

        itemDelegate: Rectangle {
            id:rec
            //width: 180
            //border.color: "green"

            Text {
                anchors.bottom: rec.bottom
                anchors.bottomMargin: 22
                anchors.horizontalCenter: rec.horizontalCenter
                renderType: Text.NativeRendering
                color: "black"
                font.pixelSize: 35
                text: styleData.value              
            }
        }

        headerDelegate: Rectangle {
            id: hedrec
            width: 100
            height: 70
            opacity: 0.6
            //border.color: "red"//для отображения сетки шапки

            Text {
                y: 6
                anchors.horizontalCenter: parent.horizontalCenter
                text: styleData.value
                font.pixelSize: 37
                color: "black"
            }
        }

        model: theModel
    }

}
