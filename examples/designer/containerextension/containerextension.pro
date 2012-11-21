QTDIR_build {
# This is only for the Qt build. Do not use externally. We mean it.
PLUGIN_TYPE = designer
load(qt_plugin)
} else {
# Public example:

#! [0]
TEMPLATE = lib
CONFIG  += plugin
#! [0]

TARGET   = $$qtLibraryTarget($$TARGET)

target.path = $$[QT_INSTALL_PLUGINS]/designer
INSTALLS += target

}

#! [1]
QT      += widgets designer
#! [1]

#! [2]
HEADERS += multipagewidget.h \
           multipagewidgetplugin.h \ 
           multipagewidgetcontainerextension.h \
           multipagewidgetextensionfactory.h 

SOURCES += multipagewidget.cpp \
           multipagewidgetplugin.cpp \
           multipagewidgetcontainerextension.cpp \
           multipagewidgetextensionfactory.cpp 

OTHER_FILES += multipagewidget.json
#! [2]

# install
sources.files = $$SOURCES $$HEADERS *.pro multipagewidget.json
sources.path = $$[QT_INSTALL_EXAMPLES]/qttools/designer/containerextension
INSTALLS += sources

