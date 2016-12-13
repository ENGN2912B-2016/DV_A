#include <QQmlContext>
#include <QtQml>
#include "states.h"
#include "math.h"
#include <QList>
#include <QStringList>
#include <QDir>
#include <QDebug>
#include "linedata.h"
void dataCal(){

    static double da[51][51][2];
    int x[51] = {650,98,180,537,51,305,881,854,826,775,717,292,169,603,658,525,439,685,552,
         911,855,888,660,497,607,548,261,420,124,894,862,285,833,803,405,713,449,77,
         797,909,773,403,668,413,202,871,805,109,755,573,279};
    int y[51]={401,487,354,359,262,258,178,245,253,503,400,545,130,246,246,203,285,300,460,65,268,158,160,
       102,418,286,61,214,228,129,217,362,144,328,71,237,348,103,203,174,376,139,343,446,239,115,280,32,269,132,164};

    for (int i=0;i<51;i++){
            for (int j=0;j<51;j++){
                double dis=sqrt(pow((x[j]-x[i]),2)+pow((y[j]-y[i]),2));
                da[i][j][0]=dis;
                da[i][j][1]=90-atan2(x[j]-x[i],y[j]-y[i])*180/3.14159;
            }
    }

    QVector<lineData> lineAll=dataRead();
    QList<QList<int>> datagroup;
    for(int i=0;i<51;i++){
        QList<int> tmp;
        datagroup.append(tmp);
    }
    for(int i=0;i<51;i++){
        QList<int> tmp=datagroup.at(i);
        for(int j=0;j<51;j++){
            tmp.append(lineAll.at(i*51+j).number);
        }
    }

    QString Hfilename="/Users/xuenanli/Desktop/example.txt";
    QFile fileH( Hfilename );
    if ( fileH.open(QIODevice::ReadWrite) ) {
        QTextStream stream( &fileH );
        for (int i=0; i<51; i++){
            stream << "Dis:"<<i+1<<"\n";
            for(int j=0;j<51;j++){
                stream << da[i][j][0] <<", ";
            }
            stream << "\n\n";
            stream << "Angle:"<<i+1<<"\n";
            for(int j=0;j<51;j++){
                stream << da[i][j][1] <<", ";
            }
            stream << "\n\n";
            stream << "People";
//            QList<int> tmp=datagroup.at(i);
//            for(int j=0;j<51;j++){
//                stream << tmp.at(j) <<", ";
//            }
        }
    }
}