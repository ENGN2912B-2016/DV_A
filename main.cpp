#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtQml>
#include "states.h"
#include "math.h"
#include "dataread.cpp"
#include <QList>
#include <QStringList>
#include <QDir>
#include <QDebug>
#include "linedata.h"
QVector<lineData> dataRead()
{
    QVector<lineData> tmplineAll;
    QFile datafile("/Users/xuenanli/Desktop/stateinflow1415.csv");
    if(!datafile.open(QIODevice::ReadOnly))
         qDebug()<<"OPEN FILE FAILED";
    QTextStream * dataout = new QTextStream(&datafile);
    QStringList tempOption = dataout->readAll().split("\n");
    for(int i = 6 ; i < tempOption.count() ; i++)
    {
         QStringList tempbar = tempOption.at(i).split(",");
         lineData tmpl;
         tmpl.orig_code=tempbar.at(0);
         tmpl.dest_code=tempbar.at(1);
         QString tmpnum=tempbar.at(6);
         tmpl.number=tmpnum.toUInt();
         tmplineAll.append(tmpl);

    }
    datafile.close();
    return tmplineAll;
}

//double calDis(int x1, int y1, int x2, int y2) {
//    double dis=sqrt(pow((x2-x1),2)+pow((y2-y1),2));
//    return dis;
//}
//double calAtan(int x1, int y1, int x2, int y2) {
//    double tan=(y2-y1)/(x2-x1);
//    double  theta=atan(tan);
//    return theta;
//}

//void calAll(int x[50], int y[50]) {

//    for (int i=0;i<50;i++){
//        for (int j=0;j<50;j++){
//            da[i][j][0]=calDis(x[i],y[i],x[j],y[j]);
//            da[i][j][1]=calAtan(x[i],y[i],x[j],y[j]);
//        }
//    }
//}

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QVector<lineData> lineAll=dataRead();

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

    QString Hfilename="/Users/xuenanli/Desktop/example.txt";
       QFile fileH( Hfilename );
       if ( fileH.open(QIODevice::ReadWrite) )
       {
           QTextStream stream( &fileH );
           for (int i=0; i<51; i++){
               stream << da[9][i][1] <<", ";
           }
       }

    states s;
    s.setName("Alaska");
    s.setTotalIn(150);


    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("s1", &s);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
