#ifndef AUTHORIZATIONMANAGER_H
#define AUTHORIZATIONMANAGER_H

#include <QObject>

class AuthorizationManager : public QObject
{
    Q_OBJECT
public:
    explicit AuthorizationManager(QObject *parent = nullptr);

signals:

};

#endif // AUTHORIZATIONMANAGER_H
