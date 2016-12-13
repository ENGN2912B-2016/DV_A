#ifndef LINEDATA_H
#define LINEDATA_H
#include <QObject>
class lineData {
public:
    lineData():orig_code(0),dest_code(0),number(0) {}
//    lineData(QString o_code, QString d_code,int num):orig_code(o_code),dest_code(d_code),num(num);
    int orig_code, dest_code;
    int number;

};
#endif // LINEDATA_H
