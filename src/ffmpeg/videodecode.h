#ifndef VIDEODECODE_H
#define VIDEODECODE_H

extern "C"
{
    #include <libavformat/avformat.h>
    #include <libavcodec/avcodec.h>
    #include <libswscale/swscale.h>
}

#include <QImage>
#include <QDebug>

static QImage getQImageFromFrame(const AVFrame* pFrame);

#endif // PLAYER_H
