#ifndef STATES_H
#define STATES_H


#include <QObject>
class states: public QObject
{
    Q_OBJECT
    Q_PROPERTY( int total READ total)
    Q_PROPERTY( QString na READ na)
public:
    explicit states( QObject* pParent = Q_NULLPTR):
        QObject( pParent ), totalIn(0), name("TBS") {}

    void setTotalIn(int a) { totalIn=a; }
    void setName(QString n) { name=n; }
   // void setStaIn(int val) { statesIn.append(val); }
    Q_INVOKABLE void method( void )
    {
        //qDebug( "[C++]%s is called.", __FUNCTION__ );
    }

    QString na() const{ return name; }
    int total() const{ return totalIn; }

    //Q_INVOKABLE int stain(int ii) { return statesIn[ii]; }

private:
    int totalIn;
   // QVector<int> statesIn;
    QString name;
};

#endif // STATES_H
