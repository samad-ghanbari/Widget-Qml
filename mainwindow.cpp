#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QQuickView>
#include <QVBoxLayout>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    QQuickView *view = new QQuickView();
    view->setSource(QUrl("qrc:/Main.qml"));

     QVBoxLayout *layout = new QVBoxLayout;

    QWidget *container = QWidget::createWindowContainer(view, this);

     layout->addWidget(container);
    centralWidget()->setLayout(layout);
}

MainWindow::~MainWindow()
{
    delete ui;
}
