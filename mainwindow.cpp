#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QQuickView>
#include <QVBoxLayout>
#include <QQmlContext>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    QQuickView *view = new QQuickView();
    QQmlContext *rootContext = view->rootContext();
    rootContext->setContextProperty("myClass", this);
    view->setSource(QUrl("qrc:/Main.qml"));

    QVBoxLayout *layout = new QVBoxLayout;

    QWidget *container = QWidget::createWindowContainer(view, this);
    container->setAttribute(Qt::WA_AlwaysStackOnTop);

    layout->addWidget(container);
    centralWidget()->setLayout(layout);
}

MainWindow::~MainWindow()
{
    delete ui;
}
