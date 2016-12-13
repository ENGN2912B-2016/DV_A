import QtQuick 2.5
import QtQuick.Window 2.2
import QtPositioning 5.7
import QtLocation 5.6
import QtQuick.Controls 2.0

Rectangle {

    //property int stateradious
    property string statename
    property int stateoutdata
    property var anglearray:[]
    property var linedisarray:[]
    property var linedataarray:[]
    property var destnamelist:["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","District Of Columbia","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]

    function setLinedata (element){
        for (var i=0; i<50;i++){
            anglearray.push(element.getStaIn(i))
        }
        console.log(anglearray)
    }
    id:statecircle
//!!!!!!!!!!!!!!!!!!!!!!!!!
    width: stateoutdata/10000
    height: stateoutdata/10000
    color: "#b0c4de"
    radius: width
    z: 3
    opacity: 0.6

//    ToolTip{
//        id: toolTip28
//        text:statename+" total out "+stateoutdata;
//    }
    Popup {
            id: toolTip28
            x:0
            y:statecircle.width + 20
            implicitHeight: 80
            Text {
                text: statename + "\n" + "Migration in: " + stateoutdata
            }

            }

    Line {
    id:firstline0
    angle:anglearray[0]
    distance: linedisarray[0]
    stsdata: linedataarray[0]
    deststtname:destnamelist[0]
    }

    Line {
    id:firstline1
    angle:anglearray[1]
    distance: linedisarray[1]
    stsdata: linedataarray[1]
    deststtname:destnamelist[1]
    }

    Line {
    id:firstline2
    angle:anglearray[2]
    distance: linedisarray[2]
    stsdata: linedataarray[2]
    deststtname:destnamelist[2]
    }

    Line {
    id:firstline3
    angle:anglearray[3]
    distance: linedisarray[3]
    stsdata: linedataarray[3]
    deststtname:destnamelist[3]
    }

    Line {
    id:firstline4
    angle:anglearray[4]
    distance: linedisarray[4]
    stsdata: linedataarray[4]
    deststtname:destnamelist[4]
    }

    Line {
    id:firstline5
    angle:anglearray[5]
    distance: linedisarray[5]
    stsdata: linedataarray[5]
    deststtname:destnamelist[5]
    }

    Line {
    id:firstline6
    angle:anglearray[6]
    distance: linedisarray[6]
    stsdata: linedataarray[6]
    deststtname:destnamelist[6]
    }

    Line {
    id:firstline7
    angle:anglearray[7]
    distance: linedisarray[7]
    stsdata: linedataarray[7]
    deststtname:destnamelist[7]
    }

    Line {
    id:firstline8
    angle:anglearray[8]
    distance: linedisarray[8]
    stsdata: linedataarray[8]
    deststtname:destnamelist[8]
    }

    Line {
    id:firstline9
    angle:anglearray[9]
    distance: linedisarray[9]
    stsdata: linedataarray[9]
    deststtname:destnamelist[9]
    }

    Line {
    id:firstline10
    angle:anglearray[10]
    distance: linedisarray[10]
    stsdata: linedataarray[10]
    deststtname:destnamelist[10]
    }

    Line {
    id:firstline11
    angle:anglearray[11]
    distance: linedisarray[11]
    stsdata: linedataarray[11]
    deststtname:destnamelist[11]
    }

    Line {
    id:firstline12
    angle:anglearray[12]
    distance: linedisarray[12]
    stsdata: linedataarray[12]
    deststtname:destnamelist[12]
    }

    Line {
    id:firstline13
    angle:anglearray[13]
    distance: linedisarray[13]
    stsdata: linedataarray[13]
    deststtname:destnamelist[13]
    }

    Line {
    id:firstline14
    angle:anglearray[14]
    distance: linedisarray[14]
    stsdata: linedataarray[14]
    deststtname:destnamelist[14]
    }

    Line {
    id:firstline15
    angle:anglearray[15]
    distance: linedisarray[15]
    stsdata: linedataarray[15]
    deststtname:destnamelist[15]
    }

    Line {
    id:firstline16
    angle:anglearray[16]
    distance: linedisarray[16]
    stsdata: linedataarray[16]
    deststtname:destnamelist[16]
    }

    Line {
    id:firstline17
    angle:anglearray[17]
    distance: linedisarray[17]
    stsdata: linedataarray[17]
    deststtname:destnamelist[17]
    }

    Line {
    id:firstline18
    angle:anglearray[18]
    distance: linedisarray[18]
    stsdata: linedataarray[18]
    deststtname:destnamelist[18]
    }

    Line {
    id:firstline19
    angle:anglearray[19]
    distance: linedisarray[19]
    stsdata: linedataarray[19]
    deststtname:destnamelist[19]
    }

    Line {
    id:firstline20
    angle:anglearray[20]
    distance: linedisarray[20]
    stsdata: linedataarray[20]
    deststtname:destnamelist[20]
    }

    Line {
    id:firstline21
    angle:anglearray[21]
    distance: linedisarray[21]
    stsdata: linedataarray[21]
    deststtname:destnamelist[21]
    }

    Line {
    id:firstline22
    angle:anglearray[22]
    distance: linedisarray[22]
    stsdata: linedataarray[22]
    deststtname:destnamelist[22]
    }

    Line {
    id:firstline23
    angle:anglearray[23]
    distance: linedisarray[23]
    stsdata: linedataarray[23]
    deststtname:destnamelist[23]
    }

    Line {
    id:firstline24
    angle:anglearray[24]
    distance: linedisarray[24]
    stsdata: linedataarray[24]
    deststtname:destnamelist[24]
    }

    Line {
    id:firstline25
    angle:anglearray[25]
    distance: linedisarray[25]
    stsdata: linedataarray[25]
    deststtname:destnamelist[25]
    }

    Line {
    id:firstline26
    angle:anglearray[26]
    distance: linedisarray[26]
    stsdata: linedataarray[26]
    deststtname:destnamelist[26]
    }

    Line {
    id:firstline27
    angle:anglearray[27]
    distance: linedisarray[27]
    stsdata: linedataarray[27]
    deststtname:destnamelist[27]
    }

    Line {
    id:firstline28
    angle:anglearray[28]
    distance: linedisarray[28]
    stsdata: linedataarray[28]
    deststtname:destnamelist[28]
    }

    Line {
    id:firstline29
    angle:anglearray[29]
    distance: linedisarray[29]
    stsdata: linedataarray[29]
    deststtname:destnamelist[29]
    }

    Line {
    id:firstline30
    angle:anglearray[30]
    distance: linedisarray[30]
    stsdata: linedataarray[30]
    deststtname:destnamelist[30]
    }

    Line {
    id:firstline31
    angle:anglearray[31]
    distance: linedisarray[31]
    stsdata: linedataarray[31]
    deststtname:destnamelist[31]
    }

    Line {
    id:firstline32
    angle:anglearray[32]
    distance: linedisarray[32]
    stsdata: linedataarray[32]
    deststtname:destnamelist[32]
    }

    Line {
    id:firstline33
    angle:anglearray[33]
    distance: linedisarray[33]
    stsdata: linedataarray[33]
    deststtname:destnamelist[33]
    }

    Line {
    id:firstline34
    angle:anglearray[34]
    distance: linedisarray[34]
    stsdata: linedataarray[34]
    deststtname:destnamelist[34]
    }

    Line {
    id:firstline35
    angle:anglearray[35]
    distance: linedisarray[35]
    stsdata: linedataarray[35]
    deststtname:destnamelist[35]
    }

    Line {
    id:firstline36
    angle:anglearray[36]
    distance: linedisarray[36]
    stsdata: linedataarray[36]
    deststtname:destnamelist[36]
    }

    Line {
    id:firstline37
    angle:anglearray[37]
    distance: linedisarray[37]
    stsdata: linedataarray[37]
    deststtname:destnamelist[37]
    }

    Line {
    id:firstline38
    angle:anglearray[38]
    distance: linedisarray[38]
    stsdata: linedataarray[38]
    deststtname:destnamelist[38]
    }

    Line {
    id:firstline39
    angle:anglearray[39]
    distance: linedisarray[39]
    stsdata: linedataarray[39]
    deststtname:destnamelist[39]
    }

    Line {
    id:firstline40
    angle:anglearray[40]
    distance: linedisarray[40]
    stsdata: linedataarray[40]
    deststtname:destnamelist[40]
    }

    Line {
    id:firstline41
    angle:anglearray[41]
    distance: linedisarray[41]
    stsdata: linedataarray[41]
    deststtname:destnamelist[41]
    }

    Line {
    id:firstline42
    angle:anglearray[42]
    distance: linedisarray[42]
    stsdata: linedataarray[42]
    deststtname:destnamelist[42]
    }

    Line {
    id:firstline43
    angle:anglearray[43]
    distance: linedisarray[43]
    stsdata: linedataarray[43]
    deststtname:destnamelist[43]
    }

    Line {
    id:firstline44
    angle:anglearray[44]
    distance: linedisarray[44]
    stsdata: linedataarray[44]
    deststtname:destnamelist[44]
    }

    Line {
    id:firstline45
    angle:anglearray[45]
    distance: linedisarray[45]
    stsdata: linedataarray[45]
    deststtname:destnamelist[45]
    }

    Line {
    id:firstline46
    angle:anglearray[46]
    distance: linedisarray[46]
    stsdata: linedataarray[46]
    deststtname:destnamelist[46]
    }

    Line {
    id:firstline47
    angle:anglearray[47]
    distance: linedisarray[47]
    stsdata: linedataarray[47]
    deststtname:destnamelist[47]
    }

    Line {
    id:firstline48
    angle:anglearray[48]
    distance: linedisarray[48]
    stsdata: linedataarray[48]
    deststtname:destnamelist[48]
    }

    Line {
    id:firstline49
    angle:anglearray[49]
    distance: linedisarray[49]
    stsdata: linedataarray[49]
    deststtname:destnamelist[49]
    }

    Line {
    id:firstline50
    angle:anglearray[50]
    distance: linedisarray[50]
    stsdata: linedataarray[50]
    deststtname:destnamelist[50]
    }

    MouseArea {
        id: mouseArea28
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked:
        {
            if (mouse.button == Qt.RightButton){
                firstline0.hide()
                firstline1.hide()
                firstline2.hide()
                firstline3.hide()
                firstline4.hide()
                firstline5.hide()
                firstline6.hide()
                firstline7.hide()
                firstline8.hide()
                firstline9.hide()
                firstline10.hide()
                firstline11.hide()
                firstline12.hide()
                firstline13.hide()
                firstline14.hide()
                firstline15.hide()
                firstline16.hide()
                firstline17.hide()
                firstline18.hide()
                firstline19.hide()
                firstline20.hide()
                firstline21.hide()
                firstline22.hide()
                firstline23.hide()
                firstline24.hide()
                firstline25.hide()
                firstline26.hide()
                firstline27.hide()
                firstline28.hide()
                firstline29.hide()
                firstline30.hide()
                firstline31.hide()
                firstline32.hide()
                firstline33.hide()
                firstline34.hide()
                firstline35.hide()
                firstline36.hide()
                firstline37.hide()
                firstline38.hide()
                firstline39.hide()
                firstline40.hide()
                firstline41.hide()
                firstline42.hide()
                firstline43.hide()
                firstline44.hide()
                firstline45.hide()
                firstline46.hide()
                firstline47.hide()
                firstline48.hide()
                firstline49.hide()
                firstline50.hide()

            }
            else {
                firstline0.appear()
                firstline1.appear()
                firstline2.appear()
                firstline3.appear()
                firstline4.appear()
                firstline5.appear()
                firstline6.appear()
                firstline7.appear()
                firstline8.appear()
                firstline9.appear()
                firstline10.appear()
                firstline11.appear()
                firstline12.appear()
                firstline13.appear()
                firstline14.appear()
                firstline15.appear()
                firstline16.appear()
                firstline17.appear()
                firstline18.appear()
                firstline19.appear()
                firstline20.appear()
                firstline21.appear()
                firstline22.appear()
                firstline23.appear()
                firstline24.appear()
                firstline25.appear()
                firstline26.appear()
                firstline27.appear()
                firstline28.appear()
                firstline29.appear()
                firstline30.appear()
                firstline31.appear()
                firstline32.appear()
                firstline33.appear()
                firstline34.appear()
                firstline35.appear()
                firstline36.appear()
                firstline37.appear()
                firstline38.appear()
                firstline39.appear()
                firstline40.appear()
                firstline41.appear()
                firstline42.appear()
                firstline43.appear()
                firstline44.appear()
                firstline45.appear()
                firstline46.appear()
                firstline47.appear()
                firstline48.appear()
                firstline49.appear()
                firstline50.appear()

            }
        }

        hoverEnabled: true

        onEntered: {
            parent.color='lightblue'
            toolTip28.visible = true

        }
        onExited: {
            parent.color="#b0c4de"
            toolTip28.visible = false
        }
    }
}
