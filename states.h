#ifndef STATES_H
#define STATES_H


#include <QObject>
class states: public QObject
{
    Q_OBJECT
    Q_PROPERTY( int total READ total)
    Q_PROPERTY( QString na READ na)
    Q_PROPERTY(QList<int> staIn READ staIn)
public:
    states( QObject* pParent = Q_NULLPTR):QObject( pParent ), totalIn(0), name("TBS"){
        for(int i=0;i<51;i++) statesIn.append(1);
    }
    void setTotalIn(int a) { totalIn=a; }
    void setName(QString n) { name=n; }
    void setStaIn(int i, int val) { statesIn.replace(i,val); }
    Q_INVOKABLE int getStaIn( int i ) {return statesIn.at(i);}
    QString na() const{ return name; }
    int total() const{ return totalIn; }
    QList<int> staIn() const{return statesIn;}

private:
    int totalIn;
    QList<int> statesIn;
    QString name;
};

#endif // STATES_H
