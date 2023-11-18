#ifndef SESSIONMANAGER_H
#define SESSIONMANAGER_H

#include <QObject>
#include <QTimer>

class SessionManager : public QObject
{
    Q_OBJECT

public:
    SessionManager(QObject *parent = nullptr);

public:
    void CreateSession();

public slots:
    void CheckValidityAuthorization();

private:
    bool    _isSessionValid;
    QTimer  *_timeSession;
};

#endif // SESSIONMANAGER_H
