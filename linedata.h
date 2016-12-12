#ifndef LINEDATA_H
#define LINEDATA_H
#include <QObject>
class lineData {
public:
    lineData():orig_code("tbs"),dest_code("tbs"),number(0) {}
//    lineData(QString o_code, QString d_code,int num):orig_code(o_code),dest_code(d_code),num(num);
    QString orig_code, dest_code;
    int number;

};
#endif // LINEDATA_H
