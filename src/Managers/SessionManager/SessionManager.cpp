#include "SessionManager.h"

SessionManager::SessionManager(QObject *parent) :
    QObject{parent},
    _isSessionValid(true)
{

}

void SessionManager::CreateSession()
{
    _timeSession = new QTimer(this);
    connect(_timeSession, &QTimer::timeout, this, &SessionManager::CheckValidityAuthorization);
    _timeSession->start(1000);
}

void SessionManager::CheckValidityAuthorization()
{
    if (_isSessionValid) {

    }
}
