=begin
** Form generated from reading ui file 'form.ui'
**
** Created: Tue May 6 22:48:50 2008
**      by: Qt User Interface Compiler version 4.3.4
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_MainWindow
    attr_reader :centralwidget
    attr_reader :qvboxLayout
    attr_reader :qhboxLayout
    attr_reader :searchInput
    attr_reader :searchButton
    attr_reader :browser
    attr_reader :menubar
    attr_reader :statusbar

    def setupUi(mainWindow)
    mainWindow.setObjectName("mainWindow")
    @centralwidget = Qt::Widget.new(mainWindow)
    @centralwidget.setObjectName("centralwidget")
    @qvboxLayout = Qt::VBoxLayout.new(@centralwidget)
    @qvboxLayout.setObjectName("qvboxLayout")
    @qhboxLayout = Qt::HBoxLayout.new()
    @qhboxLayout.setObjectName("qhboxLayout")
    @searchInput = Qt::LineEdit.new(@centralwidget)
    @searchInput.setObjectName("searchInput")

    @qhboxLayout.addWidget(@searchInput)

    @searchButton = Qt::PushButton.new(@centralwidget)
    @searchButton.setObjectName("searchButton")

    @qhboxLayout.addWidget(@searchButton)


    @qvboxLayout.addLayout(@qhboxLayout)

    @browser = Qt::TextBrowser.new(@centralwidget)
    @browser.setObjectName("browser")

    @qvboxLayout.addWidget(@browser)

    mainWindow.setCentralWidget(@centralwidget)
    @menubar = Qt::MenuBar.new(mainWindow)
    @menubar.setObjectName("menubar")
    @menubar.setGeometry(Qt::Rect.new(0, 0, 625, 31))
    mainWindow.setMenuBar(@menubar)
    @statusbar = Qt::StatusBar.new(mainWindow)
    @statusbar.setObjectName("statusbar")
    mainWindow.setStatusBar(@statusbar)

    retranslateUi(mainWindow)

    size = Qt::Size.new(625, 497)
    size = size.expandedTo(mainWindow.minimumSizeHint())
    mainWindow.resize(size)

    Qt::Object.connect(@searchInput, SIGNAL('returnPressed()'), @searchButton, SLOT('animateClick()'))

    Qt::MetaObject.connectSlotsByName(mainWindow)
    end # setupUi

    def setup_ui(mainWindow)
        setupUi(mainWindow)
    end

    def retranslateUi(mainWindow)
    mainWindow.setWindowTitle(Qt::Application.translate("MainWindow", "MainWindow", nil, Qt::Application::UnicodeUTF8))
    @searchButton.setText(Qt::Application.translate("MainWindow", "Search", nil, Qt::Application::UnicodeUTF8))
    end # retranslateUi

    def retranslate_ui(mainWindow)
        retranslateUi(mainWindow)
    end

end

module Ui
    class MainWindow < Ui_MainWindow
    end
end  # module Ui

