import QtQuick 2.4
import QtLocation 5.6
import QtQuick.Controls 2.0

Rectangle {

    property int angle;
    property int distance;
    property int stsdata;



  id: idBox
  width: 2
  height: 3/distance*(1+stsdata/600000)
  z:-1
  color: 'transparent'
  anchors.centerIn: parent
    Rectangle{
      id:rect1
      x:0
      y:0
      width: 1
      height: 3/distance*(1+stsdata/600000)
      color:"transparent"
      visible: false
    }
    Rectangle{
      id:rect2
      x:1
      y:0
      radius: height
      width: 1
      height: 3/distance*(1+stsdata/600000)
      color: 'brown'
      opacity: 0.5
     // ToolTip.visible: hovered
     // ToolTip.text: qsTr("This tool tip is shown after hovering the button for a second.")
      Popup {

        id:tipbox1
        //anchors.centerIn: parent
        width: 20
        height: 20
        Text{
            text:  " to  " +stsdata
        }



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


    MouseArea{
      id: mouseArea2
      anchors.fill: rect2
      hoverEnabled: true
      onEntered: {
          tipbox1.visible = true
          rect2.color= 'brown'
          rect2.opacity= 0.95
        }
      onExited: {
          tipbox1.visible = false
          rect2.color= 'brown'
          rect2.opacity= 0.5
        }
     }

    function appear(){
      rect2.visible = true
      rotation.running = true
      scale.running = true
      mouseArea2.enabled=true
    }
    function hide() {
        scaleback.running = true
        mouseArea2.enabled=false
    }
    function isCompleted() {
        return scale.complete()
    }
}
