#include <QQmlContext>
#include <QtQml>
#include "states.h"
#include "math.h"
#include <QList>
#include <QStringList>
#include <QDir>
#include <QDebug>
#include "linedata.h"

QVector<lineData> dataRead()
{
    QVector<lineData> tmplineAll;
    //qDebug()<<QDir::currentPath();
    QString c=QCoreApplication::applicationDirPath();
    QFile datafile(c+"/stateinflow1415.csv");
    if(!datafile.open(QIODevice::ReadOnly))
         qDebug()<<"OPEN FILE FAILED";
    QTextStream * dataout = new QTextStream(&datafile);
    QStringList tempOption = dataout->readAll().split("\n");
    for(int i = 1 ; i < tempOption.count() ; i++)
    {
         QStringList tempbar = tempOption.at(i).split(",");
         lineData tmpl;
         QString tmpocode=tempbar.at(0);
         tmpl.orig_code=tmpocode.toUInt();
         QString tmpdcode=tempbar.at(1);
         tmpl.orig_code=tmpdcode.toUInt();
         QString tmpnum=tempbar.at(6);
         tmpl.number=tmpnum.toUInt();
         tmplineAll.append(tmpl);

    }
    datafile.close();
    return tmplineAll;
}
