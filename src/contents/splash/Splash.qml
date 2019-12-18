import QtQuick 2.5
import QtGraphicalEffects 1.0

Rectangle {
    id: root
    color: "#000000"

     property int stage

    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true
        }
    }

    Item {
        id: content
        anchors.fill: parent
        opacity: 0
        TextMetrics {
            id: units
            text: "M"
            property int gridUnit: boundingRect.height
            property int largeSpacing: units.gridUnit
            property int smallSpacing: Math.max(2, gridUnit/4)
        }

        Image {
            id: animation
            anchors.centerIn: parent
            source: "images/start-here-kde-animation.svg"
            sourceSize.height: parent.height / 4.75
            sourceSize.width: parent.height / 4.75
            RotationAnimator on rotation {
                id: rotationAnimator
                from: 0
                to: 360
                duration: 2000
                loops: Animation.Infinite
        }
    }
}

    OpacityAnimator {
        id: introAnimation
        running: false
        target: content
        from: 0
        to: 1
        duration: 1000
        easing.type: Easing.InOutQuad
    }
    Image {
            id: logo
            anchors.centerIn: parent
            source: "images/start-here-kde-logo.svg"
            sourceSize.height: parent.height / 4.75
            sourceSize.width: parent.height / 4.75
    }
            Rectangle {
            radius: 0
            color: "#ffffff"
            anchors {
                bottom: parent.bottom
                bottomMargin: parent.height / 2.55
                horizontalCenter: parent.horizontalCenter
            }
            height: 8
            width: height*32
            Rectangle {
                radius: 0
                anchors {
                    left: parent.left
                    top: parent.top
                    bottom: parent.bottom
                }
                width: (parent.width / 6) * (stage - 1)
                color: "#009900"
                Behavior on width {
                    PropertyAnimation {
                        duration: 250
                        easing.type: Easing.InOutQuad
                    }
                }
            }
        }
}
