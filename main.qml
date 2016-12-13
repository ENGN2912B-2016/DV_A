import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Window {
    id : mainWindow
    visible: true
    width: 1300
    height: 800
    property alias image1: image1

    Image {
        id: image1
        width: 1000
        height: 615
        fillMode: Image.PreserveAspectFit
        source: "1.png"

    }

    Statecenter {
            x: 855-(1/2)*(width-15)
            y: 268-(1/2)*(width-15)

            statename: "Maryland"
            stateoutdata: 303043

            anglearray : [147.025, 163.865, 172.739, 164.031, 180.428, 181.042, -73.8867, 267.511, 207.35, 108.8, 136.273, 153.803, 191.374, 184.989, 186.372, 191.143, 177.66, 169.34, 147.639, -74.578, 0, -73.3009, 208.98, 204.877, 148.833, 176.645, 199.213, 187.076, 183.132, -74.3273, -82.1849, 170.636, 259.939, 130.914, 203.643, 192.315, 168.853, 191.974, 228.257, -60.1241, 127.208, 195.929, 158.146, 158.065, 182.543, -84.0301, 166.504, 197.555, 179.427, 205.747, 190.235]

            linedisarray: [244.364, 788.042, 680.456, 330.764, 804.022, 550.091, 93.6803, 23.0217, 32.6497, 248.244, 190.966, 627.454, 699.743, 252.958, 198.225, 336.341, 416.347, 172.986, 358.71, 210.583, 0, 114.843, 222.91, 394.614, 289.834, 307.527, 629.035, 438.339, 732.094, 144.368, 51.4782, 577.699, 125.936, 79.3977, 491.232, 145.344, 413.807, 795.304, 87.1149, 108.407, 135.602, 470.048, 201.48, 476.496, 653.644, 153.834, 51.4198, 782.44, 100.005, 313.081, 585.314]

            linedataarray: [303897,35908,166316,93334,1162002,487532,985402,55112,90722,0,1003635,52106,20431,1466396,392763,123967,114195,246660,246842,159813,692993,750711,597318,322304,104765,280468,17333,37316,203724,256845,1494652,51514,2620649,567708,24317,840774,124792,58588,1017451,220498,239369,44616,337489,992239,45449,100882,734499,163190,70207,412421,18801]

        }

//    Rectangle {
//        x: 1831
//        y: 144
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }
//    //    Statecenter {
//    //                            x:497-(1/2)*(width-50)
//    //                            y:102-(1/2)*(width-50)
//    //                            statename: "florida"
//    //                            stateoutdata:55849460
//    //                            anglearray :
//    //                            linedisarray:
//    //                            linedataarray:
//    //                        }

//    Rectangle {
//        id: rhodeIsland44
//        x: 909
//        y: 174
//        width: 14
//        height: 14
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: maine23
//        x: 911
//        y: 65
//        width: 27
//        height: 26
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: pennsylvania42
//        x: 797
//        y: 203
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: idaho16
//        x: 169
//        y: 130
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: colorado08
//        x: 305
//        y: 258
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: arkansas05
//        x: 537
//        y: 359
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: missouri29
//        x: 548
//        y: 286
//        width: 30
//        height: 30
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: northDakota38
//        x: 405
//        y: 71
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: southDakota46
//        x: 403
//        y: 139
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: washington53
//        x: 109
//        y: 32
//        z: 3
//        color: "lightsteelblue"
//        radius: width
//        opacity: 0.6
//        width: 32
//        height: 31
//    }

//    Rectangle {
//        id: oregon41
//        x: 77
//        y: 103
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: tennessee47
//        x: 668
//        y: 343
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: westVirginia54
//        x: 755
//        y: 269
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: kentucky21
//        x: 685
//        y: 300
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: indiana18
//        x: 658
//        y: 246
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: ohio39
//        x: 713
//        y: 237
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: nevada32
//        x: 124
//        y: 228
//        width: 35
//        height: 32
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: texas48
//        x: 413
//        y: 446
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: california06
//        x: 51
//        y: 262
//        width: 33
//        height: 30
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: arizona04
//        x: 180
//        y: 354
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: oklahoma40
//        x: 449
//        y: 348
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: wyoming56
//        x: 279
//        y: 164
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: alaska02
//        x: 98
//        y: 487
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: hawaii15
//        x: 292
//        y: 545
//        width: 27
//        height: 27
//        color: "#b0c4de"
//        radius: 11
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: wisconsin55
//        x: 573
//        y: 132
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        x: 1715
//        y: 489
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: minnesota27
//        x: 497
//        y: 102
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: michigan26
//        x: 660
//        y: 160
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: alabama01
//        x: 650
//        y: 401
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: montana30
//        x: 261
//        y: 61
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: utah49
//        x: 202
//        y: 239
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: georgia13
//        x: 717
//        y: 400
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: newMexico35
//        x: 285
//        y: 362
//        width: 50
//        height: 50
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: virginia51
//        x: 805
//        y: 280
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: northCarolina37
//        x: 803
//        y: 328
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: southCarolina45
//        x: 773
//        y: 376
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: newYork36
//        x: 833
//        y: 144
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: vermont50
//        x: 871
//        y: 115
//        width: 15
//        height: 15
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: connecticut09
//        x: 881
//        y: 178
//        width: 15
//        height: 15
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: newJersey34
//        x: 862
//        y: 217
//        width: 15
//        height: 15
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: massachusetts25
//        x: 888
//        y: 158
//        width: 15
//        height: 15
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: newHampshire33
//        x: 894
//        y: 129
//        width: 15
//        height: 15
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: kansas20
//        x: 439
//        y: 285
//        width: 30
//        height: 30
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: nebraska31
//        x: 420
//        y: 214
//        width: 30
//        height: 30
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: iowa19
//        x: 525
//        y: 203
//        width: 30
//        height: 30
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: illinois17
//        x: 603
//        y: 246
//        width: 30
//        height: 30
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: florida12
//        x: 775
//        y: 503
//        width: 30
//        height: 30
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6
//    }

//    Rectangle {
//        id: louisiana22
//        x: 552
//        y: 460
//        width: 30
//        height: 30
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6

//    }

//    Rectangle {
//        id: mississippi28
//        x: 607
//        y: 418
//        width: 25
//        height: 25
//        color: "#b0c4de"
//        radius: width
//        z: 3
//        opacity: 0.6

//    }

    Statecenter {
        id:florida
        x:775-width/2
        y:503-width/2
        statename: "Florida"
        stateoutdata: 1000000

        anglearray : [219.215, 181.354, 194.059, 211.176, 198.411, 207.532, -71.9362, -72.9755, -78.47, 90, 240.616, 175.03, 211.613, 236.207, 245.523, 230.195, 212.976, 246.09, 190.914, -72.7504, -71.2003, -71.8646, 251.465, 235.268, 206.837, 223.71, 220.693, 219.149, 202.901, -72.35, -73.0806, 196.054, -80.8227, -80.9099, 229.421, 256.88, 205.429, 209.816, -85.806, -67.8393, 269.098, 224.377, 236.227, 188.948, 204.737, -76.103, -82.3382, 215.268, 265.115, 241.433, 214.351]

        linedisarray: [161.335, 677.189, 613.373, 278.173, 763.058, 530.024, 341.849, 269.824, 255.149, 0, 118.207, 484.823, 711.593, 309.246, 282.379, 390.512, 400.525, 222.056, 227.108, 458.628, 248.244, 363.034, 361.765, 487.94, 188.279, 314.035, 677.909, 457.762, 706.701, 392.475, 298.94, 509.883, 363.655, 177.226, 568.792, 273.13, 360.972, 804.49, 300.806, 355.242, 127.016, 520.461, 192.481, 366.46, 630.892, 399.7, 225.009, 815.719, 234.853, 422.428, 600.78]
        linedataarray: [303897,35908,166316,93334,1162002,487532,985402,55112,90722,0,1003635,52106,20431,1466396,392763,123967,114195,246660,246842,159813,692993,750711,597318,322304,104765,280468,17333,37316,203724,256845,1494652,51514,2620649,567708,24317,840774,124792,58588,1017451,220498,239369,44616,337489,992239,45449,100882,734499,163190,70207,412421,18801]
    }

}
