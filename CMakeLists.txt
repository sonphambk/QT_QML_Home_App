cmake_minimum_required(VERSION 3.16)

project(QT_Home_Automation_UI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick QuickControls2)

qt_standard_project_setup()

set(CMAKE_AUTORCC ON)

qt_add_executable(appQT_Home_Automation_UI
    main.cpp
    application.h application.cpp
    fpstext.h fpstext.cpp
)

qt_add_qml_module(appQT_Home_Automation_UI
    URI QT_Home_Automation_UI
    VERSION 1.0
    QML_FILES
        Main.qml
        style.qml
        MainArea.qml
        components/PrefsLabel.qml
        components/PrefsSwitch.qml
        components/OutlinedLabel.qml
        components/IconLabel.qml
        RESOURCES qml.qrc
        QML_FILES

)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQT_Home_Automation_UI PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQT_Home_Automation_UI
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQT_Home_Automation_UI
    PRIVATE
    Qt6::Quick
    Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appQT_Home_Automation_UI
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
