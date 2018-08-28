import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

ApplicationWindow {
    width: 500
    height: 600

    Material.theme: Material.Light

    menuBar: ToolBar {
        RowLayout {
            width: parent.width
            ToolButton {
                icon.source: "icons/ic_menu_white_24dp.png"
            }

            Label {
                Layout.fillWidth: true
                text: "Travel Stream"
            }

            ToolButton {
                anchors.right: parent.right
                icon.source: "icons/ic_search_white_24dp.png"
            }
        }
    }

    Pane {
        anchors.centerIn: parent
        width: 400
        height: 400

        Material.elevation: 8

        Material.background: Material.Blue

    }


}
