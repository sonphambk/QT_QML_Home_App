#include "application.h"
#include <QUrl>
#include "fpstext.h"

Application::Application(QObject *parent)
    : QObject{parent}
{
    registerQML();
}

void Application::registerQML()
{
    qmlRegisterSingletonType(QUrl(QStringLiteral("qrc:/style.qml")), "SmartHome", 1, 0, "Style");
    qmlRegisterType<FPSText>("SmartHome", 1, 0, "FPSText");
}
