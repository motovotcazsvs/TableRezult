#ifndef MYMODEL_H
#define MYMODEL_H
//Рабочая модель для таблиц!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#include <QObject>
#include <QAbstractTableModel>
#include <QList>
#include <QString>
#include <QDebug>

struct SimpleData
{
    QString m_one;
    QString m_two;
    QString m_three;
    QString m_fo;
};

enum Role{
    OneRole = Qt::UserRole,
    TwoRole,
    ThreeRole,
    Fo
};
class MyModel : public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit MyModel();//MyData *the_data);
    int rowCount(const QModelIndex & parent = QModelIndex()) const Q_DECL_OVERRIDE;
    int columnCount(const QModelIndex &parent = QModelIndex()) const Q_DECL_OVERRIDE;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const Q_DECL_OVERRIDE;

    QHash<int, QByteArray> roleNames() const Q_DECL_OVERRIDE;
signals:

public slots:
    void theDataChanged();

private:
   QList<SimpleData> m_the_data;

};

#endif // MYMODEL_H
