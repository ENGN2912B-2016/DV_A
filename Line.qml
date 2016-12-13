import QtQuick 2.4
import QtLocation 5.6
import QtQuick.Controls 2.0

Rectangle {

    property int angle;
    property int distance;
    property int stsdata;
    property string deststtname;
    anchors.centerIn: parent
    Rectangle{

        id: idBox
        width: 2
        height: 3/distance* (1+stsdata/1000000)
        z:-1
        color: 'transparent'
        anchors.centerIn: parent.Center
        Rectangle{
            id:rect1
            x:0
            y:0
            width: 1
            height: 3/distance*(1+stsdata/1000000)
            color:"transparent"
            visible: false
        }
        Rectangle{
            id:rect2
            x:1
            y:0
            radius: height
            width: 1
            height: 3/distance*(1+stsdata/1000000)
            color: 'brown'
            opacity: 0.5

            MouseArea{
                id: mouseArea2
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    rect3.visible = true
                    rect2.color= 'brown'
                    rect2.opacity= 0.95
                }
                onExited: {
                    rect3.visible = false
                    rect2.color= 'brown'
                    rect2.opacity= 0.5
                }
            }
        }
    }

    Rectangle{
        id:rect3
        x:50
        y:50
        width: 250
        height: 110
        color:"white"
        border.color: "black"
        border.width: 1.5
        visible: false
        Text{
            x:10
            y:50
            text: qsTr("From "+deststtname +" to " +statename+ ": "+ stsdata)
        }
        Text{
            x:10
            y:20
            font.bold: true
            font.family: "Helvetica"
            font.pointSize: 13
            text: qsTr(deststtname+"->" +statename )
        }
    }




    RotationAnimator {
        id:rotation
        target: idBox;
        from: 0;
        to: angle;
        duration: 0
    }

    ScaleAnimator {
        id:scale
        target: idBox;
        from: 1;
        to: distance;
        duration: 500

    }


    ScaleAnimator {
        id:scaleback
        target: idBox;
        from: distance;
        to: 1;
        duration: 500

    }




    function appear(){
        mouseArea2.enabled =true
        rect2.visible = true
        rotation.running = true
        scale.running = true
    }
    function hide() {
        //rect2.visible = false
        scaleback.running = true
        mouseArea2.enabled =false

    }
    function isRunning (){

    }
}
