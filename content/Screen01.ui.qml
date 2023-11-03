

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import UntitledProject

Rectangle {
    id: rectangle
    width: 1280
    height: 720

    color: Constants.backgroundColor

    Grid {
        id: menuGrid
        x: 0
        y: 0
        width: 300
        height: 720
        bottomPadding: 0
        topPadding: 320
        leftPadding: 100
        spacing: 20
        layoutDirection: Qt.LeftToRight
        flow: Grid.TopToBottom
        verticalItemAlignment: Grid.AlignVCenter
        horizontalItemAlignment: Grid.AlignHCenter
        rows: 4
        columns: 1

        Button {
            id: firstButton
            width: 100
            text: qsTr("Pierwszy algorytm")
        }

        Button {
            id: secondButton
            width: 100
            text: qsTr("Drugi algorytm")
            highlighted: none.none
        }

        Button {
            id: exitButton
            text: qsTr("Wyjście")
            leftInset: 0
            topInset: 0

            Connections {
                target: exitButton
                onClicked: Qt.quit()
            }
        }
    }

    Grid {
        id: descriptionGrid
        x: 300
        y: 0
        width: 980
        height: 720
        rows: 2
        columns: 1

        Row {
            id: imageRow
            width: 980
            height: 420
            spacing: 0
            padding: 0

            Image {
                id: image
                width: 980
                height: 420
                source: "test.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Grid {
            id: textGrid
            width: descriptionGrid.width
            height: 300
            columns: 1
            rows: 1

            Text {
                id: descriptionText
                width: textGrid.width
                height: textGrid.height
                text: qsTr("Lorem ipsum dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labor. Lorem ipsum dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labor. Lorem ipsum dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.")
                font.pixelSize: 26
                wrapMode: Text.WordWrap
                bottomPadding: 10
                rightPadding: 10
                leftPadding: 10
                topPadding: 10
            }
        }
    }
}
