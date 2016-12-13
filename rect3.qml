import QtQuick 2.0

Rectangle {
    id:rect3
    x:150
    y:150
    width: 170
    height: 110
    color:"white"
    border.color: "black"
    border.width: 1.5
    visible: false
    Text{
        anchors.centerIn: parent
        text: qsTr("From "+idBox.originsttname+" to " +idBox.deststtname + ": "+ idBox.stsdata)
    }
    Text{
        x:10
        y:20
        font.bold: true
        font.family: "Helvetica"
        font.pointSize: 13
        text: qsTr(idBox.originsttname+"->" +idBox.deststtname )
    }
}
