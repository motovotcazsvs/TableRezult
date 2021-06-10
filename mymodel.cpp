#include "mymodel.h"

MyModel::MyModel() : QAbstractTableModel(0)
{
    m_the_data << SimpleData{"1", "9,82", "3,74", "375"}
               << SimpleData{"2", "9,96", "3,87", "486"}
               << SimpleData{"3", "9,74", "3,77", "778"}
               << SimpleData{"4", "9,95", "3,85", "856"}
               << SimpleData{"5", "9,95", "3,77", "789"}
               << SimpleData{"6", "9,95", "3,77", "852"}
               << SimpleData{"7", "9,95", "3,77", "632"}
               << SimpleData{"8", "9,96", "3,77", "963"}
               << SimpleData{"9", "9,96", "3,86", "852"}
               << SimpleData{"10", "9,96", "3,84", "444"};

}

int MyModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return m_the_data.size();
}

int MyModel::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return 4;
}

QVariant MyModel::data(const QModelIndex &index, int role) const
{
    switch(role)
    {
        case OneRole:
            return m_the_data[index.row()].m_one;
        case TwoRole:
            return m_the_data[index.row()].m_two;
        case ThreeRole:
            return m_the_data[index.row()].m_three;
        case Fo:
            return m_the_data[index.row()].m_fo;
    }

}

QHash<int, QByteArray> MyModel::roleNames() const
{
    QHash<int, QByteArray> roles;

    roles[OneRole] = "one";
    roles[TwoRole] = "two";
    roles[ThreeRole] = "three";
    roles[Fo] = "fo";

    return roles;

}

void MyModel::theDataChanged()
{
    //TODO
}
