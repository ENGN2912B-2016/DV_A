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
        width: 1
        height: 1.5/distance* (1+stsdata/1000000)
        z:-1
        color: 'transparent'
        anchors.centerIn: parent.Center
        visible: false
        Rectangle{
            id:rect1
            x:0
            y:0
            width: 0.5
            height: 1.5/distance*(1+stsdata/1000000)
            color:"transparent"
            visible: false
        }
        Rectangle{
            id:rect2
            x:0.5
            y:0
            radius: height
            width: 0.5
            height: 1.5/distance*(1+stsdata/1000000)
            color: 'brown'
            opacity: 0.5
            enabled:false

            MouseArea{
                id: mouseArea2
                anchors.fill: parent
                hoverEnabled: true
                enabled: false
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

    SequentialAnimation {
        id: scale
        running: false

        RotationAnimator {
            id:rotation
            target: idBox;
            from: 0;
            to: angle;
            duration: 10
        }

        ScaleAnimator {
            target: idBox;
            from: 1;
            to: 2*distance;
            duration: 500
        }
    }

    SequentialAnimation {
        id: scaleback
        running: false

        RotationAnimator {
            id:rotation2
            target: idBox;
            from: 0;
            to: angle;
            duration: 0
        }

        ScaleAnimator {
            target: idBox;
            from: 2*distance;
            to: 1;
            duration: 500
        }
    }

    function appear(){
        idBox.visible=true
        rect2.enabled=true
        mouseArea2.enabled =true
        rect2.visible = true
        scale.running = true
    }
    function hide() {
        scaleback.running = true
        mouseArea2.enabled =false
        rect2.enabled=false
    }
    function isRunning (){

    }
}
