# Generated from qttools.pro.

cmake_minimum_required(VERSION 3.15.0)

include(.cmake.conf)
project(QtTools # special case
    VERSION "${QT_REPO_MODULE_VERSION}"
    DESCRIPTION "Qt Tools" # special case
    HOMEPAGE_URL "https://qt.io/"
    LANGUAGES CXX C
)

# special case begin
set(QT_REPO_NOT_WARNINGS_CLEAN TRUE)
find_package(Qt6 ${PROJECT_VERSION} CONFIG REQUIRED COMPONENTS BuildInternals Core Network)
find_package(Qt6 ${PROJECT_VERSION} CONFIG OPTIONAL_COMPONENTS AxContainer DBus Xml Widgets Quick QuickWidgets QmlDevTools Sql PrintSupport OpenGL OpenGLWidgets)
# special case end

qt_build_repo()

