import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: mainWindow
    width: 400
    height: 400
    title: "Frameless"

    flags: Qt.Window | Qt.FramelessWindowHint

    property int previousX
    property int previousY

    MouseArea {
        id: leftResize
        width: 5

        cursorShape: Qt.SizeHorCursor

        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }

        onPressed: previousX = mouseX

        onMouseXChanged: {
            var dx = mouseX - previousX

            mainWindow.setX(mainWindow.x + dx)

            mainWindow.setWidth(mainWindow.width - dx)

        }

    }

}
