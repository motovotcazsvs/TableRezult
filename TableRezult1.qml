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
        anchors.rightMargin: 30
        font.pixelSize: 27
    }
    
    TableView {
        id: tv
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: type_prob.bottom
        anchors.topMargin: 30
        width: 500
        height: 740
        frameVisible: true
        
        Column {
            spacing: 10
            
            Rectangle {
                id: hed
                width: 440
                height: 50
                radius: 10
                color: "#A2ADD0"
                opacity: 0.4
            }
            
            Repeater {
                id:repeater
                model: tv.rowCount
                
                Rectangle {
                    width: 440
                    height: 50
                    radius: 10
                    color: "grey"
                    opacity: 0.2
                                       
                    Rectangle {
                        id: vert_lin1
                        width: 5
                        height: 50
                        color: "white"
                        x: 67
                        
                    }
                    
                    Rectangle {
                        id: vert_lin2
                        width: 5
                        color: "white"
                        height: 50
                        x: 165
                    }
                    
                    Rectangle {
                        id: vert_lin3
                        width: 5
                        color: "white"
                        height: 50
                        x: 265
                    }
                    
                }
            }
        }
             
        TableViewColumn {
            id: tvc
            title: "№"
            role: "one"
            width: 75
        }      
        TableViewColumn {title: "Gl"; role: "two"; width: 105}
        TableViewColumn {title: "Lc"; role: "three"; width: 105}
        TableViewColumn {
            title: qsTr("Штрих-код")
            role: "fo"
            width: 213

        }

        rowDelegate: Rectangle{
            id: r
            height: 70
        }

        itemDelegate: Rectangle {
            id:rec
            width: 150
            border.color: "green"

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
            width: 110
            height: 70
            opacity: 0.6
            border.color: "red"//для отображения сетки шапки

            Text {
                //anchors.verticalCenter: parent.verticalCenter
                //anchors.horizontalCenter: parent.horizontalCenter
                anchors.centerIn: parent
                text: styleData.value
                font.pixelSize: 37
                color: "black"
            }
        }

        model: theModel
    }
}
