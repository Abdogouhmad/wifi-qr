import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.Commons
import qs.Widgets

Rectangle {
  id: root
  property var pluginApi: null
  property ShellScreen screen
  property string widgetId: ""
  property string section: ""
  property int sectionWidgetIndex: -1
  property int sectionWidgetsCount: 0

  implicitWidth: icon.implicitWidth + Style.marginM * 2
  implicitHeight: Style.barHeight
  color: Style.capsuleColor
  radius: Style.radiusM

  NIcon {
    id: icon
    anchors.centerIn: parent
    icon: "qrcode"
    color: Color.mOnSurfaceVariant
  }

  MouseArea {
    anchors.fill: parent
    onClicked: pluginApi.openPanel(root.screen, root)
  }
}
