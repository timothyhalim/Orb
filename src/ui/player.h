#ifndef PLAYER_H
#define PLAYER_H

#include <QWidget>
#include <QPixmap>

QT_BEGIN_NAMESPACE
namespace Ui { class Player; }
QT_END_NAMESPACE

class Player : public QWidget
{
    Q_OBJECT

public:
    Player(QWidget *parent = nullptr);
    ~Player();
    void setImage(QPixmap image);
    void play();

private:
    Ui::Player *ui;
};
#endif // PLAYER_H
