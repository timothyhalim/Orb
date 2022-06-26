#include "player.h"
#include "ui_player.h"


Player::Player(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Player)
{
    ui->setupUi(this);
    //connect(ui->play_btn, &QPushButton::clicked, this, this->play());
}

Player::~Player()
{
    delete ui;
}

void Player::setImage(QPixmap image)
{
    ui->label->setPixmap(image);
}

void Player::play()
{

}

