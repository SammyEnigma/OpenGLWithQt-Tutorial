#------------------------------------------------------------------
#
# Testproject to check for OpenGL functionality in a Qt application
#
#------------------------------------------------------------------

QT       += core gui opengl widgets

TARGET = Tutorial_05
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

win32 {
	LIBS += -lopengl32
}

SOURCES += \
		Camera.cpp \
		KeyboardMouseHandler.cpp \
		OpenGLGridObject.cpp \
		OpenGLWindow.cpp \
		SceneView.cpp \
		ShaderProgram.cpp \
		TestDialog.cpp \
		Transform3D.cpp \
		main.cpp

HEADERS += \
	Camera.h \
	KeyboardMouseHandler.h \
	OpenGLGridObject.h \
	OpenGLWindow.h \
	SceneView.h \
	ShaderProgram.h \
	TestDialog.h \
	Transform3D.h

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
	Tutorial_05.qrc
