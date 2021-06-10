#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "mymodel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    MyModel model;
    engine.rootContext()->setContextProperty("theModel", &model);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
