#ifndef LINEDATA_H
#define LINEDATA_H
#include <QObject>
class lineData {
public:
    lineData():orig_code(0),dest_code(0),number(0) {}
    int orig_code, dest_code,number;

};
#endif // LINEDATA_H
