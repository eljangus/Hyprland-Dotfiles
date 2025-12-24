import Quickshell
import Quickshell.Wayland
import QtQuick

PanelWindow {
	anchors.top: false
	anchors.bottom: true
	anchors.right: true
	width: 530
	height: 100
        color: "#00000000"
	Text {
		anchors.left: parent
		text: "Linux Aktivieren"
		color: "#ffffff"
		opacity: 0.3
		font.pixelSize: 30
	}
	Text {
		anchors.left: parent
		text: "\n\nWechseln sie zu den Einstellungen, um Linux zu aktivieren"
		color: "#ffffff"
		opacity: 0.3
		font.pixelSize: 18
	}
}
